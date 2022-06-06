#include "asm.h"
#include "ir.h"
#include "hashtable.h"
extern InterCode root_code;
HashTable_p OffsetTable;
const char *registers[] = {
    "$zero",                                                //常数0
    "$at",                                                  // (Assembler Temporary) 汇编器保留。
    "$v0", "$v1",                                           //(Values)表达式求值或函数结果。
    "$a0", "$a1", "$a2", "$a3",                             //  (Arguments) 函数的首四个参数（跨函数不保留）。
    "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", //(Temporaries) 函数调用者负责保存（跨函数不保留）。
    "$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$s7", //(Saved Values)函数负责保存和恢复（跨函数不保留）。
    "$t8", "$t9",                                           //(Temporaries)函数调用者负责保存（跨函数不保留）。
    "$k0", "$k1",                                           //中断处理保留。
    "$gp",                                                  //(Global Pointer)指向静态数据段 64K 内存空间的中部。
    "$sp",                                                  //(Stack Pointer)栈顶指针。
    "$fp",                                                  // MIPS32作为 $s8 GCC 作为帧指针。
    "$ra"                                                   // (Return Address)返回地址。
};
const char *headers =
    ".data\n"
    "_prompt: .asciiz \"Enter an integer:\"\n"

    "_ret: .asciiz \"\\n\"\n"
    "\n"
    ".text\n"
    ".globl main\n"
    "\n"
    "read:\n"
    "  li $v0, 4\n"
    "  la $a0, _prompt\n"
    "  syscall\n"
    "  li $v0, 5\n"
    "  syscall\n"
    "  jr $ra\n"
    "\n"
    "write:\n"
    "  li $v0, 1\n"
    "  syscall\n"
    "  li $v0, 4\n"
    "  la $a0, _ret\n"
    "  syscall\n"
    "  move $v0, $0\n"
    "  jr $ra\n\n";
enum{
  $t0_, $t1_,$t2_,$t3_,$t4_,$t5_,$t6_,$t7_,
};

char *cmp_name[10] = {
    "blt", "ble", "bgt", "bge", "beq", "bne"};
int reg_cnt = 0;
char * regs[] ={"$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7"};
Operand regtoop[20] = {0};
static inline void Saveregtomem(FILE * f,  int curreg, Operand op) {
  if(op->kind == OP_CONSTANT) return;
  fprintf(f, "  sw  %s, %d($fp)\n", regs[curreg], op->offset);
  regtoop[curreg] = NULL;
  op->reg_num = -1;
}
static inline void Loadmemtoreg(FILE * f, int curreg, Operand op) {
  if ( op-> kind == OP_CONSTANT) {
    fprintf(f, "  li  %s, %d\n", regs[curreg], op->value);
  }
  else if( op-> need_deref){
    fprintf(f, "  la  %s, %d($fp)\n",  regs[curreg], op->offset);
  } 
  else {
    fprintf(f, "  lw  %s, %d($fp)\n",  regs[curreg],  op->offset);
  }
  
}
int get_free_reg(FILE *f, Operand a)
{
  // if (a->reg_num != -1 )
  // {
  //   return a->reg_num;
  // }
  char *id = regs[reg_cnt];
  reg_cnt = (reg_cnt + 1) % 8; 
  // if(regtoop[reg_cnt] != NULL){
  //   //当前寄存器已经被用过了 ,则将当前寄存器的内容spill到栈里
  //   Saveregtomem(f, reg_cnt, regtoop[reg_cnt]); 
  //   regtoop[reg_cnt] = NULL;
  // }
  //此时当前寄存器可以被使用
  Loadmemtoreg(f, reg_cnt, a);
  a->reg_num = reg_cnt;  //当前reg被当前op占有
  regtoop[reg_cnt] = a;
  // printf("%s\n",id);
  return reg_cnt;
}
char * get_reg_name(FILE * f, Operand a){
  int reg_id = get_free_reg(f, a);
  Log("%s : %s", OpName(a) , regs[reg_id]);
  return regs[reg_id];
}
static inline bool is_constant(Operand a)
{
  return a->kind == OP_CONSTANT;
}
int MemAlloc(Operand a, int cur_offset)
{
  if(a->kind == OP_CONSTANT || a->kind == OP_LABEL || a->kind == OP_RELOP || a->kind == OP_FUNCTION){
    return 0;
  }
  char *name = OpName(a);
  Symbol cur_ele = HT_Find(OffsetTable, name);
  if (cur_ele)
  {
    a->offset = cur_ele->offset;
    Log("Already in OffsetTable %d",cur_offset);
    return 0;
  }
  else
  {
    cur_ele = Symbol_Init(NULL, NULL);
    cur_ele->offset = cur_offset;
    a->offset = cur_offset;
    HT_Insert(OffsetTable, name, cur_ele);
    Log("Insert into OffsetTable %s with size %d at offset %d",name, a->type->mem_size,a->offset);
    return a->type->mem_size;
  }
}
void clear_regs(FILE *f){
  for(int i = 0 ; i < 8; i++){
    if(regtoop[i]){
      //如果当前reg对应着一个op
      // Log("%s",OpName(regtoop[i]));
      // Log("%d",i);
      Saveregtomem(f, i ,regtoop[i]);
    }
  }
  memset(regtoop,0,sizeof(regtoop));
}
int arg_num = 0;
int Prepare_func(FILE *f, InterCode func_code)
{
  InterCode cur_code = func_code;
  Log("Prepare function %s\n", func_code->function.func->name);
  int curoffset = -4;
  int paramoffset = 8;
  // curoffset -= 4; //$fp
  cur_code = cur_code->next;
  while (cur_code != NULL && cur_code->kind != IR_FUNCTION)
  {
    switch (cur_code->kind)
    {
    case IR_ADD:
    case IR_MINUS:
    case IR_MUL:
    case IR_DIV:
    case IR_CALADDR:
      curoffset -= MemAlloc(cur_code->binop.op1, curoffset);
      curoffset -= MemAlloc(cur_code->binop.op2, curoffset);
      curoffset -= MemAlloc(cur_code->binop.result, curoffset);
      break;
    case IR_CALL:
      curoffset -= MemAlloc(cur_code->call.result, curoffset);
      break;
    case IR_ARG:
      curoffset -= MemAlloc(cur_code->arg.varibale, curoffset);
      break;
    case IR_ASSIGN:
      curoffset -= MemAlloc(cur_code->assign.left, curoffset);
      curoffset -= MemAlloc(cur_code->assign.right, curoffset);
      break;
    case IR_DEC:
      // TODO();
      curoffset -= MemAlloc(cur_code->dec.dec_val, curoffset);
      break;
    case IR_GETADDR:
      curoffset -= MemAlloc(cur_code->getaddr.dest_addr, curoffset);
      curoffset -= MemAlloc(cur_code->getaddr.target_val, curoffset);
      break;
    case IR_MEMWRITE:
      curoffset -= MemAlloc(cur_code->memwrite.mem, curoffset);
      curoffset -= MemAlloc(cur_code->memwrite.val, curoffset);
      break;
    case IR_PARAM:
      MemAlloc(cur_code->parametre.param, paramoffset);
      paramoffset += 4 ;
      break;
    case IR_READ:
      curoffset -= MemAlloc(cur_code->read.result, curoffset);
      break;
    case IR_WRITE:
      curoffset -= MemAlloc(cur_code->write.result, curoffset);
      break;
    case IR_RETURN:
      curoffset -= MemAlloc(cur_code->ret.op_ret, curoffset);
      cur_code->ret.func = func_code->function.func;
      break;
    case IR_COND_JMP:
      curoffset -= MemAlloc(cur_code->jump_cond.t1,curoffset);
      curoffset -= MemAlloc(cur_code->jump_cond.t2,curoffset);
      curoffset -= MemAlloc(cur_code->jump_cond.target,curoffset);
      break;
    case IR_LOADVAL:
      curoffset -= MemAlloc(cur_code->loadval.dest_val,curoffset);
      curoffset -= MemAlloc(cur_code->loadval.target_addr,curoffset);
      break;
    case IR_GOTO:
    case IR_LABEL:
      //DO NOTHING
      break;
    default:
      Assert(0,"Unknown IR kind %d",cur_code->kind);
      break;
    }
    cur_code = cur_code->next;
    
  }
  Log("Finish function %s\n", func_code->function.func->name);
  func_code->function.func->size  = -curoffset;
  return -curoffset;
}
void pushtostack(FILE *f, Operand op){
    int num; 
    if(!(op->type->kind == BASIC || op->is_add)){
        op->need_deref = true; 
    }
    num = get_free_reg(f , op);
    fprintf(f, "  addi  $sp, $sp, -4\n");
    fprintf(f, "  sw  %s, 0($sp)\n",regs[num] );
 
}

      char * pos[] = { "-" ,""};
      char * op[] = {"sub", "add"};
void handle_binop(FILE * f, InterCode  curcode,int is_pos){
      int dst_reg_cnt = get_free_reg(f,curcode->binop.result);
      char * dst_reg= regs[dst_reg_cnt];
      if (is_constant(curcode->binop.op1))
      {
        fprintf(f, "  %s %s, %s, %d\n",  op[is_pos] ,dst_reg, get_reg_name(f, curcode->binop.op2) , curcode->binop.op1->value);
      }
      if (is_constant(curcode->binop.op2))
      {
        fprintf(f, "  %s %s, %s, %d\n", op[is_pos] ,dst_reg, get_reg_name(f, curcode->binop.op1) ,curcode->binop.op2->value);
      }
      else
      {
      fprintf(f, "  %s %s, %s, %s\n"  ,op[is_pos],dst_reg ,get_reg_name(f, curcode->binop.op1) ,get_reg_name(f, curcode->binop.op2));
      }

      Saveregtomem(f, dst_reg_cnt,curcode->binop.result);
      // Log("DST_REG:%s %s",OpName(curcode->binop.result),dst_reg);
}
static inline pushra(FILE * f){
    fprintf(f, "  addi  $sp, $sp, -4\n");
    fprintf(f, "  sw  $fp, 0($sp)\n");
    fprintf(f, "  addi  $sp, $sp, -4\n");
    fprintf(f, "  sw  $ra, 0($sp)\n");
}
static inline popra(FILE *f){
    fprintf(f, "  lw  $ra, 0($sp)\n");
    fprintf(f, "  addi  $sp, $sp, 4\n");
    fprintf(f, "  lw  $fp, 0($sp)\n");
    fprintf(f, "  addi  $sp, $sp, 4\n");
}
void  Generate_code(FILE *f, InterCode root_code)
{
  InterCode curcode = root_code;
  int dst_reg_cnt;
  char * dst_reg;
  if (curcode == NULL || f == NULL)
    return;
  OffsetTable = HT_Init();
  fprintf(f, "%s", headers);
  while (curcode)
  {
    Log("Cur sentence :  %d",curcode->kind);
    switch (curcode->kind)
    {
    case IR_FUNCTION:
    {
      int func_size = Prepare_func(f, curcode);
      fprintf(f, "%s:\n", curcode->function.func->name);
      fprintf(f, "  move  $fp, $sp\n");
      fprintf(f, "  subu  $sp, $sp, %d\n", func_size);
      fflush(f);
    }
    break;
    case IR_ARG: 
      pushtostack(f,curcode->arg.varibale);
      arg_num ++;
      break;
    case IR_PARAM:  
      // fprintf(f, "PARAM  %s\n", get_reg_name(f, curcode->parametre.param));
      break;
    case IR_DEC:
      // fprintf(f, "DEC %s %d\n", get_reg_name(f,curcode->dec.dec_val), curcode->dec.dec_val->type->mem_size);
      break;
    case IR_GETADDR:

      dst_reg_cnt  = get_free_reg(f,curcode->getaddr.dest_addr);
      fprintf(f, "  la  %s %d($sp)",  regs[dst_reg_cnt],curcode->getaddr.target_val->offset);
      Saveregtomem(f,dst_reg_cnt,curcode->getaddr.dest_addr);
      break;
    case IR_READ:
      dst_reg_cnt =  get_free_reg(f, curcode->read.result);
      dst_reg = regs[dst_reg_cnt];
      pushra(f);
      fprintf(f, "  jal  read\n");
      popra(f);
      fprintf(f, "  move %s, $v0\n",dst_reg);
      Saveregtomem(f, dst_reg_cnt ,curcode->read.result );
      // fprintf(f, "READ %s\n", get_reg_name(f,curcode->read.result));
      break;
    case IR_WRITE:
      pushra(f);
      fprintf(f, "  move $a0, %s\n",get_reg_name(f, curcode->arg.varibale));
      fprintf(f, "  jal  write\n");
      popra(f);
      // fprintf(f, "WRITE %s\n", get_reg_name(f,curcode->write.result));
      break;
    case IR_CALADDR:{
      dst_reg_cnt = get_free_reg(f, curcode->binop.result);
      dst_reg = regs[dst_reg_cnt];
      if( !curcode->binop.op1->is_add){
        curcode->binop.op1->need_deref = true;
      }  
      fprintf(f, "  sub  %s, %s, %s\n",dst_reg,get_reg_name(f, curcode->binop.op1), get_reg_name(f,curcode->binop.op2));
      Saveregtomem(f,dst_reg_cnt,curcode->binop.result);
    }  
    break;
    case IR_ASSIGN:{
       dst_reg_cnt = get_free_reg(f, curcode->assign.left);
      // Log("%d",dst_reg_cnt);
       dst_reg = regs[dst_reg_cnt];
      Log("DST_REG:%s %s",OpName(curcode->assign.left),dst_reg);
      if (curcode->assign.right->kind == OP_CONSTANT)
      {
        fprintf(f, "  li %s, %d\n", dst_reg, curcode->assign.right->value);
      }
      else
      {
        fprintf(f, "  move %s, %s\n", dst_reg, get_reg_name(f, curcode->assign.right));
        // assert(0);
      }
      Saveregtomem(f, dst_reg_cnt,curcode->assign.left);
      fflush(f);
      break;
    }
    case IR_GOTO:
      fprintf(f, "  j label%d\n", curcode->jmp.l_jmp->var_no);
      break;
    case IR_COND_JMP:
      // Log("%s", relop[curcode->jump_cond.relop->value]);
      fprintf(f, "  %s  %s, %s, label%d\n", cmp_name[curcode->jump_cond.relop->value], get_reg_name(f, curcode->jump_cond.t1), get_reg_name(f, curcode->jump_cond.t2), curcode->jump_cond.target->var_no);
      break;
    case IR_LOADVAL:
      dst_reg_cnt = get_free_reg(f,curcode->loadval.dest_val );
      dst_reg  = regs[dst_reg_cnt];
      fprintf(f, "  lw %s, 0(%s)\n", dst_reg, get_reg_name(f, curcode->loadval.target_addr));
      Saveregtomem(f, dst_reg_cnt, curcode->loadval.dest_val);
      break;
    case IR_MEMWRITE:
      fprintf(f, "  sw %s, 0(%s)\n", get_reg_name(f, curcode->memwrite.val), get_reg_name(f, curcode->memwrite.mem));
      break;
    case IR_ADD:{
      handle_binop(f,curcode,1);
    }
      break;
    case IR_MINUS:{
      handle_binop(f,curcode,0);
      break;
    }
    case IR_MUL:{
       dst_reg_cnt = get_free_reg(f,curcode->binop.result);
       dst_reg= regs[dst_reg_cnt];
      fprintf(f, "  mul %s, %s, %s\n", dst_reg, get_reg_name(f, curcode->binop.op1), get_reg_name(f, curcode->binop.op2));
      Saveregtomem(f,dst_reg_cnt, curcode->binop.result);
    }
      break;
    case IR_DIV:{
       dst_reg_cnt = get_free_reg(f,curcode->binop.result);
       dst_reg= regs[dst_reg_cnt];
      fprintf(f, "  div %s, %s\n", get_reg_name(f, curcode->binop.op1), get_reg_name(f, curcode->binop.op2));
      fprintf(f, "  mflo %s\n", dst_reg);
      Saveregtomem(f,dst_reg_cnt, curcode->binop.result);
    }
      break;
    case IR_CALL:
      if (curcode->call.result)
      {
        pushra(f);
        fprintf(f, "  jal  %s\n", OpName(curcode->call.func));
        popra(f);
        dst_reg_cnt  = get_free_reg(f,curcode->call.result);
        fprintf(f, "  move  %s, $v0\n",regs[dst_reg_cnt]);
        Saveregtomem(f, dst_reg_cnt, curcode->call.result);
        fprintf(f, "  addi  $sp, $sp, %d\n",arg_num * 4 );
        arg_num = 0;
      }
      else
      {
        assert(0);
        // fprintf(f, "CALL %s\n",  get_reg_name(f,curcode->call.func));
      }
      break;
    case IR_RETURN:{
      fflush(f);
      // clear_regs(f);
      int size = curcode->ret.func->size;
      fprintf(f, "  move  $v0, %s\n", get_reg_name(f, curcode->ret.op_ret));
      fprintf(f, "  addiu  $sp, $sp, %d\n", size);
      fprintf(f, "  jr  $ra\n");
      break;
    }
    case IR_LABEL:
      fprintf(f, "  %s :\n", OpName(curcode->label.l));
      break;

    default:
      fprintf(stderr, "\033[31mERROR in outputIR! Unknown curcode kind %d.\033[0m\n", curcode->kind);
      // assert(0);
      break;
    }
    curcode = curcode->next;
    fflush(f);
  }
}