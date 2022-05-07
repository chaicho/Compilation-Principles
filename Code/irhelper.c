#include "ir.h"
#include "irhelper.h"
#include "stdlib.h"
#include "hashtable.h"
#include <string.h>
#include <stdio.h>
#include <string.h>
#include "common.h"
int label_cnt = 1;
int var_cnt = 1;
int temp_cnt = 1;
extern  Type type_int;
extern  Type type_float;
extern HashTable * SymbolTable;
static inline Operand new_operand(){
    Operand ret = (Operand) malloc(sizeof(struct Operand_));
    ret->is_add = false;
    return ret;
}
static inline InterCode new_intercode(){
    InterCode ret =  (InterCode) malloc(sizeof(struct InterCode_));
    ret->prev = NULL;
    ret->next = NULL;
}
Operand new_label(){
  Operand ret = new_operand();
  ret->kind = OP_LABEL;
  ret->var_no = label_cnt++;
  return ret;
}
Operand new_temp(){
  Operand ret= new_operand();
  ret->kind = OP_TEMP;
  ret->var_no = temp_cnt++;
  return ret;
}

Operand new_addr(){
  Operand ret = new_temp();
  ret->is_add = true;
  return ret;
}
Operand new_constant(int v){
  Operand ret= new_operand();
  ret->kind = OP_CONSTANT;
  ret->value = v;
  ret->type = type_int;
  return ret;
}
Operand new_var(char * id){
  Symbol cur_symbol = HT_Find(SymbolTable,id);
  if(cur_symbol->alias == NULL){
    Operand ret= new_operand();
    ret->kind = OP_VARIABLE;
    ret->var_no  = var_cnt++;
    ret->type = cur_symbol->type;
    cur_symbol->alias = ret;
    return ret;
  }
  else {
    return cur_symbol->alias;
  }
}
Operand new_relop(int id){
  Operand ret= new_operand();
  ret->kind = OP_RELOP;
  ret->value = id;
  return ret;
}

Operand new_function(char *name){
  Operand ret = new_operand();
  ret->kind = OP_FUNCTION;
  ret->name = cpstr(name);
  Log("%s",ret->name);
  return ret;
}
InterCode IR_assign(Operand lft, Operand rht){
  if(lft == NULL) return NULL;
  InterCode ret = new_intercode();
  lft->type = rht->type;
  ret->kind = IR_ASSIGN;
  ret->assign.left = lft;
  ret->assign.right = rht;
  return ret; 
}

InterCode IR_binop(Operand dst,Operand op1, Operand op2,int bintype){
    InterCode ret = new_intercode();
    ret->kind = bintype;
    ret->binop.result= dst;
    ret->binop.op1 = op1;
    ret->binop.op2 = op2;
    return ret;
}
InterCode IR_label(Operand l){
    InterCode ret = new_intercode();
    ret->kind = IR_LABEL ;
    ret->label.l = l ;
    return ret;
}

InterCode IR_return(Operand ret){
    InterCode ir_ret = new_intercode();
    ir_ret->kind = IR_RETURN;
    ir_ret->ret.op_ret = ret;
    return ir_ret;
}
InterCode IR_goto(Operand l){
    InterCode ir_jmp = new_intercode();
    ir_jmp->kind = IR_GOTO;
    ir_jmp->jmp.l_jmp =  l;
    return ir_jmp; 
}

InterCode IR_cond_jmp(Operand t1, Operand relop, Operand t2, Operand target){
    InterCode cond_jmp = new_intercode();
    cond_jmp->kind = IR_COND_JMP;
    cond_jmp->jump_cond.t1 = t1;
    cond_jmp->jump_cond.t2 = t2;
    cond_jmp->jump_cond.relop = relop;
    cond_jmp->jump_cond.target = target; 
    return cond_jmp; 
}
InterCode IR_arg(Operand v){
   InterCode ret = new_intercode();
   ret->kind = IR_ARG;
   ret->arg.varibale = v;
   return ret;  
}

InterCode IR_call(Operand place,Operand func){
  InterCode ret= new_intercode();
  ret->kind = IR_CALL;
  ret->call.func = func;
  ret->call.result = place;
  return ret;
}
InterCode IR_dec(Operand v){
  InterCode ret = new_intercode();
  ret->kind = IR_DEC;
  ret->dec.dec_val = v;
  return ret;
}
InterCode IR_getaddr(Operand dst,Operand s){
  InterCode ret = new_intercode();
  ret->kind =  IR_GETADDR;
  ret->getaddr.dest_addr = dst;
  ret->getaddr.target_val = s;
  dst->is_add = true;
  return ret;
}
InterCode IR_loadval(Operand a ,Operand b){
  InterCode ret = new_intercode();
  ret->kind = IR_LOADVAL;
  ret->loadval.dest_val = a;
  ret->loadval.target_addr = b;
  return ret;
}
InterCode IR_memwrite(Operand mem, Operand val){
  InterCode ret =new_intercode();
  ret->kind  = IR_MEMWRITE;
  ret->memwrite.mem = mem;
  ret->memwrite.val = val; 
  return ret;
}
InterCode IR_function(Operand func){
  InterCode ret= new_intercode();
  ret->kind = IR_FUNCTION;
  ret->function.func = func;
  return ret;
}
InterCode IR_param(Operand Param){
  InterCode ret= new_intercode();
  ret->kind = IR_PARAM;
  ret->parametre.param = Param;
  return ret;
}
InterCode IR_read(Operand a){
  InterCode ret =new_intercode();
  ret->kind =IR_READ;
  ret->read.result = a;
  return ret;
}
InterCode IR_write(Operand a){
  InterCode ret =new_intercode();
  ret->kind =IR_WRITE;
  ret->write.result = a;
  return ret;
}
InterCode IR_caladdr(Operand a,Operand  b,Operand c){
  InterCode ret =new_intercode();
  ret->kind = IR_CALADDR;
  ret->binop.result = a;
  ret->binop.op1  = b ;
  ret->binop.op2  = c;
  return ret;
}