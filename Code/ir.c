#include "ir.h"
#include "common.h"
#include "ast.h"
#include "symbol.h"
#include "hashtable.h"
#include "semantic.h"
#include "irhelper.h"
#include "debug.h"
#include "common.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdarg.h>
#include "opt.h"
#define same(a, b) !strcmp(a, b)
InterCode code_root = NULL;
extern Type type_int;
extern HashTable *SymbolTable;
#define MAX_IMM 100000
Operand immediate[MAX_IMM] = {0};
InterCode compst_codes[10000];
int cur_compst = 0;
FILE  * debug_file;

 void debug_IR(InterCode code){
  if(code == NULL ) return;
  Log("%d",code->kind);
  Output_IR(debug_file,code);
  return ;
}
void debugtillend_IR(InterCode code){
  if(!debug_file) return;
  while (code)
  {
    Output_IR(debug_file,code);
    Log("%d",code->kind);
    code = code->next;
  }
  fprintf(debug_file,"\n\n\n");
  return ;
}
InterCode ConcatCodes(int num, ...)
{
  // Log("Concat");
  va_list valist;
  va_start(valist, num);
  InterCode ret  =  va_arg(valist, InterCode);
  for (int i = 0; i < num - 1; i++)
  {
    InterCode nxt = va_arg(valist, InterCode);
    ret = ConcatIr(ret, nxt);
  }
  va_end(valist);
  return ret;
}
static inline bool CorrectNode(StNode *n, const char *name)
{
  Assert(strcmp(n->name, name) == 0, "supposed:%s actual : %s", n->name, name);
}
InterCode translate_exp(StNode *exp, Operand place, bool lval)
{
  if (exp == NULL)
    return NULL;
  CorrectNode(exp, "Exp");
  if (IsProd(exp, 1, "INT"))
  {
    int cur_int = exp->child->st_val.int_val;
    assert(place);
    place->kind = OP_CONSTANT;
    place->value = cur_int;
    place->type = type_int;
    return NULL;
    // return IR_assign(place, new_constant(cur_int));
    // if(cur_int > MAX_IMM){
    //   Operand rht = new_constant(cur_int);
    //   return IR_assign(place, rht);
    // }
    // else if (!immediate[cur_int])
    // {
    //   Operand rht = new_constant(cur_int);
    //   InterCode ret = IR_assign(place, rht);
    //   immediate[cur_int] = place;
    //   return ret;
    // }
    // else
    // {
    //   Operand cur = immediate[cur_int];
    //   cp_op(place, cur);
    //   return NULL;
    // }

    return NULL;
  }
  else if (IsProd(exp, 1, "ID"))
  {
    // TODO
    char *id = exp->child->st_val.str_val;
    Operand rht = new_var(id);
    place->type = rht->type;
    place->is_add = lval;
    assert(rht && rht->type);
    if (lval && rht->type->kind!= BASIC) 
    {
      if(rht->addr_op){
        cp_op(place,rht);
        return NULL;
      }
      InterCode ret = NULL; 
      cp_op(place,rht);
      rht->addr_op = place;
      return ret;
    }
    else
    {
      cp_op(place,rht);
      // print_type(rht->type,0);
      // assert(0);
      return NULL;
    }
  }
  else if (IsProd(exp, 3, "Exp", "ASSIGNOP", "Exp"))
  {
    //此时左侧的exp一定是左值,id/数组/结构体

    StNode *exp1 = exp->child;
    StNode *exp2 = exp->child->siblings->siblings;
    Operand lft = new_temp();
    bool is_simple = false;
    InterCode code1 = translate_exp(exp1, lft, true);
    Operand t1 = new_temp();
    InterCode code2 = translate_exp(exp2, t1, false);
    InterCode code3 = NULL;
    InterCode code4 = NULL;
    Operand rhtarr = new_temp();
    InterCode arraycode = translate_exp(exp2, rhtarr, true);

    if(same_type(rhtarr->type,lft->type) && rhtarr->type->kind==ARRAY){
      // assert(0);
      // return;
      int cur_size = 0;
      const int lft_total = lft->type->mem_size;
      const int rht_total = rhtarr->type->mem_size;
      const int ele_size = lft->type->array.elem->mem_size;
      Operand lft_addr = lft;
      Operand rht_addr = rhtarr;
      InterCode ret = ConcatCodes(2,code1,arraycode);
      if(!lft->is_add){
          lft_addr =new_temp();
          ret = ConcatIr(ret,IR_getaddr(lft_addr,lft));
          // debug_IR(IR_getaddr(lft_addr,lft));
      }
      if(!rhtarr->is_add){
          rht_addr =new_temp();
          ret = ConcatIr(ret,IR_getaddr(rht_addr,rhtarr));
      }
      Operand tmp = new_temp();
      while (cur_size < lft_total && cur_size < rht_total)
      {
          InterCode cp_rht = IR_loadval(tmp,rht_addr);
          InterCode loadtolft = IR_memwrite(lft_addr,tmp);
          InterCode lft_new = IR_binop(lft_addr,lft_addr,new_constant(4),IR_ADD); 
          InterCode rht_new = IR_binop(rht_addr,rht_addr,new_constant(4),IR_ADD); 
          cur_size += 4;
          ret = ConcatCodes(5,ret,cp_rht,loadtolft,lft_new,rht_new);
      }
      return ret;
    }
    if (!lft->is_add)
    {
      code3 = IR_assign(lft, t1);
      code4 = IR_assign(place,lft);
    }
    else
    { // addr = int/float
      code3 = IR_memwrite(lft, t1);
      code4 = IR_loadval(place,lft);
    }
    return ConcatCodes(4, code1, code2, code3, code4);
  }
  else if ((IsProd(exp, 3, "Exp", "PLUS", "Exp") || IsProd(exp, 3, "Exp", "MINUS", "Exp") || IsProd(exp, 3, "Exp", "STAR", "Exp") || IsProd(exp, 3, "Exp", "DIV", "Exp")))
  {
    StNode *exp1 = exp->child;
    StNode *exp2 = exp->child->siblings->siblings;
    StNode * opera = exp1->siblings;
    int op_num = -1;
    if(same(opera->name,"PLUS"))  op_num = IR_ADD;
    else if(same(opera->name,"MINUS")) op_num = IR_MINUS;
    else if(same(opera->name,"STAR"))  op_num = IR_MUL;
    else if(same(opera->name,"DIV")) op_num = IR_DIV;
    else{
      Log("%s",opera->name);
    }
    Operand t1 = new_temp();
    Operand t2 = new_temp();
    InterCode code1 = translate_exp(exp1, t1, false);
    InterCode code2 = translate_exp(exp2, t2, false);
    if(t1->kind == OP_CONSTANT && t2->kind == OP_CONSTANT){
       place->kind = OP_CONSTANT;
       place->type = type_int;
       switch (op_num)
       {
        case IR_ADD:
         place->value =  t1->value + t2->value;
         break;
        case IR_MINUS:
         place->value = t1->value -  t2->value;
         break;
        case IR_MUL:
         place->value  = t1->value  * t2->value;
          break;
        case IR_DIV:
         place->value = t1->value / t2->value;
         break;
        default:
          assert(0);
         break;
       }
       return   NULL;
    }
    InterCode code3 = IR_binop(place, t1, t2, op_num);
    return ConcatCodes(3, code1, code2, code3);
  }
  else if (IsProd(exp, 2, "MINUS", "Exp"))
  {
    StNode *exp1 = exp->child->siblings;
    Operand t1 = new_temp();
    InterCode code1 = translate_exp(exp1, t1, false);
    InterCode code2 = NULL;
    if(t1->kind == OP_CONSTANT){
      place->kind = OP_CONSTANT;
      cp_op(place,t1);
      place->value = -t1->value;
      code2 = NULL; 
    }
    else{
      code2 = IR_binop(place, new_constant(0), t1, IR_MINUS);
    }
    return ConcatIr(code1, code2);
  }
  else if (IsProd(exp, 3, "ID", "LP", "RP"))
  {
    char *id = exp->child->st_val.str_val;
    Operand function = new_function(id);
    if (same(id, "read"))
    {
      place->type = type_int;
      return IR_read(place);
    }
    return IR_call(place, function);
  }
  else if (IsProd(exp, 4, "ID", "LP", "Args", "RP"))
  {
    char *id = exp->child->st_val.str_val;
    if (same(id, "write"))
    {
      Operand t1 = new_temp();
      InterCode code1 = translate_exp(exp->child->siblings->siblings->child,t1,false);
      InterCode ret=  ConcatCodes(3, code1, IR_write(t1), IR_assign(place, new_constant(0)));
      return ret;
    }
    Operand function = new_function(id);
    InterCodeList arg_list = malloc(sizeof(struct InterCodeList_));
    InterCode code1 = translate_args(exp->child->siblings->siblings, arg_list);
    InterCode code2  = ListReverse(arg_list);
    InterCode cur  = code2;
    if(!place) place = new_temp();
    InterCode assign  =IR_call(place, function);
    InterCode ret =  ConcatCodes(3, code1, code2,assign );
    debugtillend_IR(assign);

    return ret;
  }
  else if (IsProd(exp, 4, "Exp", "LB", "Exp", "RB"))
  {
    StNode *exp1 = exp->child;
    StNode *exp2 = exp1->siblings->siblings;
    Operand t1 = new_temp();
    Operand t2 = new_temp();
    InterCode code1 = translate_exp(exp1, t1, true); // t1存放exp的地址
    InterCode code2 = translate_exp(exp2, t2, false);
    print_type(t1->type->array.elem, 0);
    int ele_size = t1->type->array.elem->mem_size;
    // Log("%d",ele_size);

    // if(lval) Log("%s IS ADDR",OpName(place));
    // print_type(place->type,0);
    InterCode getaddr;
    Operand offset = new_temp();
    InterCode cal_offset = NULL;
    if(t2->kind == OP_CONSTANT){
      cp_op(offset,t2);
      offset->value = t2->value * ele_size;
    }
    else{
     cal_offset = IR_binop(offset, t2, new_constant(ele_size), IR_MUL);
    }
    place->type = t1->type->array.elem;
    place->is_add = lval;
    if (lval)
    {
      getaddr = IR_caladdr(place, t1, offset);
      // print_type(place->type,0);
      return ConcatCodes(4, code1, code2, cal_offset, getaddr);
    }
    else
    {
      Operand addr_tmp = new_temp();
      getaddr = IR_caladdr(addr_tmp, t1, offset);
      addr_tmp->type = place->type;
      InterCode assgin = IR_loadval(place, addr_tmp);
      return ConcatCodes(5, code1, code2, cal_offset, getaddr, assgin);
    }
  }
  else if (IsProd(exp, 3, "Exp", "DOT", "ID"))
  {
    Operand t1 = new_temp();
    InterCode code1 = translate_exp(exp->child, t1, true);
    int offset = 0;
    char *id = exp->child->siblings->siblings->st_val.str_val;
    FieldList cur = t1->type->structure->tail;
    while (!same(cur->name, id))
    {
      offset += cur->type->mem_size;
      cur = cur->tail;
    }
    assert(cur);
    Log("%s",cur->name);
    place->type = cur->type;
    place->is_add = lval;
    if (lval )
    {
      InterCode code2 = IR_caladdr(place, t1, new_constant(offset));
      assert(place->type);
      return ConcatIr(code1, code2);
    }
    else
    {
      Operand tmp_addr = new_temp();
      InterCode code2 = IR_caladdr(tmp_addr, t1, new_constant(offset));
      tmp_addr->type = cur->type;
      InterCode code3 = IR_loadval(place, tmp_addr);
      assert(place->type);
      return ConcatCodes(3, code1, code2, code3);
    }
  }
  else if(IsProd(exp,3,"Exp","RELOP","Exp")|| IsProd(exp,2, "NOT","Exp") || IsProd(exp,3,"Exp","AND","Exp")|| IsProd(exp,3,"Exp","OR","Exp")){
    Operand label1 = new_label();
    Operand label2 = new_label();
    InterCode ir_label1 = IR_label(label1);
    InterCode ir_label2 = IR_label(label2);
    InterCode code0 = IR_assign(place, new_constant(0));
    InterCode code1 = translate_cond(exp, label1, label2);
    InterCode tmp = IR_assign(place, new_constant(1));
    InterCode code2 = ConcatIr(ir_label1, tmp);
    return ConcatCodes(4,code0,code1,code2, IR_label(label2));
  }
  else if(IsProd(exp,3,"LP","Exp","RP")){
      return translate_exp(exp->child->siblings,place,lval);
  }
  else{
    print_node(exp);
    // assert(0);
  }
  
}
InterCode translate_compst(StNode *cur)
{
  if (cur == NULL || cur->is_empty)
    return NULL;
  else if(cur->compst_code){
    return cur->compst_code;
  }
  else
  {
    InterCode code1 = translate_deflist(cur->child->siblings);
    InterCode code2 = translate_stmtlist(cur->child->siblings->siblings);
    InterCode ret = ConcatIr(code1, code2);
    return ret;
  }
}
InterCode translate_stmt(StNode *stmt)
{
  if (stmt == NULL || stmt->is_empty)
    return NULL;
  if (IsProd(stmt, 2, "Exp", "SEMI"))
  {
    Operand t1 = new_temp();
    InterCode ret = translate_exp(stmt->child, t1, false);
    return ret;
  }
  else if (IsProd(stmt, 1, "CompSt"))
  {
    // assert(0);
    new_Scope();
    parse_Compst(stmt->child,type_int,2);
    // parse_DefList(stmt->child->child->siblings,2);
    // assert(0);
    InterCode ret= translate_compst(stmt->child);
    delete_Scope();
    return ret;
  }
  else if (IsProd(stmt, 3, "RETURN", "Exp", "SEMI"))
  {
    Operand t1 = new_temp();
    // TODO
    InterCode code1 = translate_exp(stmt->child->siblings, t1, false);
    InterCode code2 = IR_return(t1);
    return ConcatIr(code1, code2);
  }
  else if (IsProd(stmt, 5, "IF", "LP", "Exp", "RP", "Stmt"))
  {
    StNode *exp = stmt->child->siblings->siblings;
    Operand label1 = new_label();
    Operand label2 = new_label();
    InterCode code1 = translate_cond(exp, label1, label2);
    InterCode code2 = translate_stmt(exp->siblings->siblings);
    // assert(0);
    return ConcatCodes(4, code1, IR_label(label1), code2, IR_label(label2));
  }
  else if (IsProd(stmt, 7, "IF", "LP", "Exp", "RP", "Stmt", "ELSE", "Stmt"))
  {
    StNode *exp = stmt->child->siblings->siblings;
    StNode *stmt1 = exp->siblings->siblings;
    StNode *stmt2 = stmt1->siblings->siblings;
    Operand label1 = new_label();
    Operand label2 = new_label();
    Operand label3 = new_label();
    InterCode code1 = translate_cond(exp, label1, label2);
    InterCode code2 = translate_stmt(stmt1);
    InterCode code3 = translate_stmt(stmt2);
    return ConcatCodes(7, code1, IR_label(label1), code2, IR_goto(label3), IR_label(label2), code3, IR_label(label3));
  }
  else if (IsProd(stmt, 5, "WHILE", "LP", "Exp", "RP", "Stmt"))
  {
    StNode *exp = stmt->child->siblings->siblings;
    StNode *stmt1 = exp->siblings->siblings;
    Operand label1 = new_label();
    Operand label2 = new_label();
    Operand label3 = new_label();
    InterCode code1 = translate_cond(exp, label2, label3);
    InterCode code2 = translate_stmt(stmt1);
    return ConcatCodes(6, IR_label(label1), code1, IR_label(label2), code2, IR_goto(label1), IR_label(label3));
  }
}
InterCode translate_stmtlist(StNode *cur)
{
  if (cur == NULL || cur->is_empty)
    return NULL;
  else
  {
    InterCode code1 = translate_stmt(cur->child);
    InterCode code2 = translate_stmtlist(cur->child->siblings);
    return ConcatIr(code1, code2);
  }
}

InterCode translate_cond(StNode *exp, Operand label_true, Operand label_false)
{
  if (IsProd(exp, 3, "Exp", "RELOP", "Exp"))
  {
    StNode *exp1 = exp->child;
    StNode *exp2 = exp1->siblings->siblings;
    StNode *relop = exp1->siblings;
    Operand t1 = new_temp();
    Operand t2 = new_temp();
    InterCode code1 = translate_exp(exp1, t1, false);
    InterCode code2 = translate_exp(exp2, t2, false);
    // Log("%d",relop->st_val.relop_val);
    Operand op_relop = new_relop(relop->st_val.relop_val);
    InterCode code3 = IR_cond_jmp(t1, op_relop, t2, label_true);
    return ConcatCodes(4, code1, code2, code3, IR_goto(label_false));
  }
  else if (IsProd(exp, 2, "NOT", "Exp"))
  {
    return translate_cond(exp->child->siblings, label_false, label_true);
  }
  else if (IsProd(exp, 3, "Exp", "AND", "Exp"))
  {
    StNode *exp1 = exp->child;
    StNode *exp2 = exp1->siblings->siblings;
    Operand label1 = new_label();
    InterCode code1 = translate_cond(exp1, label1, label_false);
    InterCode code2 = translate_cond(exp2, label_true, label_false);
    return ConcatCodes(3, code1, IR_label(label1), code2);
  }
  else if (IsProd(exp, 3, "Exp", "OR", "Exp"))
  {
    StNode *exp1 = exp->child;
    StNode *exp2 = exp1->siblings->siblings;
    Operand label1 = new_label();
    InterCode code1 = translate_cond(exp1, label_true, label1);
    InterCode code2 = translate_cond(exp2, label_true, label_false);
    return ConcatCodes(3, code1, IR_label(label1), code2);
  }
  else
  {
    // TODO()
    Operand t1 = new_temp();
    InterCode code1 = translate_exp(exp, t1, false);
    InterCode code2 = IR_cond_jmp(t1, new_relop(NE), new_constant(0), label_true);
    return ConcatCodes(3, code1, code2, IR_goto(label_false));
  }
}

InterCode translate_args(StNode *args, InterCodeList arg_list)
{
  if (IsProd(args, 1, "Exp"))
  {
    StNode *exp = args->child;
    Operand t1 = new_temp();
    InterCode code1 = translate_exp(args->child,t1,true);
    if (!(t1 && t1->type)){
      // debugtillend_IR(code1);
      assert(0);
    }
    if(t1->type->kind == BASIC && t1->is_add){
        Operand t2 = new_temp();
        code1 = ConcatIr(code1,IR_loadval(t2,t1));
        ListAppend(arg_list,IR_arg(t2));
        t2->type =  t1->type; 
        // debug_IR(arg_list->head);
    }
    else{
      ListAppend(arg_list, IR_arg(t1));
    }
    // InterCode cur = arg_list->tail; 
    // while(cur){
    //    Output_IR(debug_file,cur);
    //    cur = cur->prev;
    // }
    // fprintf(debug_file,"\n\n");
    return code1;
  }
  else if (IsProd(args, 3, "Exp", "COMMA", "Args"))
  {
    StNode *exp = args->child;
    Operand t1 = new_temp();
    InterCode code1 = translate_exp(args->child,t1,true);
    if(t1->type->kind == BASIC && t1->is_add){
        Operand t2 = new_temp();
        code1 = ConcatIr(code1,IR_loadval(t2,t1));
        // debug_IR(IR_loadval(t2,t1));
        ListAppend(arg_list,IR_arg(t2));
    }
    else{
      ListAppend(arg_list, IR_arg(t1));
    }

    InterCode code2 = translate_args(args->child->siblings->siblings, arg_list);

    return ConcatIr(code1, code2);
  }
}

InterCode translate_dec(StNode *dec, bool is_param)
{
  if(dec == NULL || dec->is_empty){
    assert(0);
    return NULL;
  }
  StNode *cur = dec->child;
  while (cur != NULL && !same(cur->name, "ID"))
  {
    cur = cur->child;
  }
  // assert(0);
  assert(cur != NULL && same(cur->name, "ID"));
  StNode *ID = cur;
  Log("%s",ID->st_val.str_val);
  Operand v1 = new_var(ID->st_val.str_val);
  InterCode dec_code = NULL;
  if (v1->type->kind != BASIC)
  {
    v1->is_add  = false;
    dec_code = IR_dec(v1);
  }
  if (IsProd(dec, 1, "VarDec"))
  {
    return dec_code;
  }
  else if (IsProd(dec, 3, "VarDec", "ASSIGNOP", "Exp"))
  {
    Operand t1 = new_temp();
    InterCode code2 = translate_exp(dec->child->siblings->siblings, t1, false);
    // debug_IR(code2);
    // assert(0);
    return ConcatCodes(3, dec_code, code2 ,IR_assign(v1,t1));
  }
}

InterCode translate_declist(StNode *declist)
{
  if (IsProd(declist, 1, "Dec"))
  {
    // assert(0);
    return translate_dec(declist->child, false);
  }
  else if (IsProd(declist, 3, "Dec", "COMMA", "DecList"))
  {
    InterCode code1 = translate_dec(declist->child, false);
    InterCode code2 = translate_declist(declist->child->siblings->siblings);
    return ConcatIr(code1, code2);
  }
}
InterCode translate_def(StNode *def)
{
  return translate_declist(def->child->siblings);
}
InterCode translate_deflist(StNode *deflist)
{
  if (deflist == NULL || deflist->is_empty)
    return NULL;
  if (IsProd(deflist, 2, "Def", "DefList"))
  {
    // assert(0);
    InterCode code1 = translate_def(deflist->child);
    InterCode code2 = translate_deflist(deflist->child->siblings);
    return ConcatIr(code1, code2);
  }
  return NULL;
}

InterCode root_code = NULL;
InterCode translate_paramdec(StNode *cur)
{
  if (IsProd(cur, 2, "Specifier", "VarDec"))
  {
    StNode *tmp = cur->child->siblings;
    tmp = tmp->child;
    while (tmp && !same(tmp->name, "ID"))
    {
      tmp = tmp->child;
    }
    assert(tmp);
    Operand var = new_var(tmp->st_val.str_val);
    if (var->type->kind != BASIC)
    {
      var->is_add = true;
    }
    return IR_param(var);
  }
  else
  {
    assert(0);
  }
}

InterCode translate_varlist(StNode *cur)
{
  if (cur == NULL || cur->is_empty)
    return NULL;
  if (IsProd(cur, 3, "ParamDec", "COMMA", "VarList"))
  {
    InterCode code1 = translate_paramdec(cur->child);
    InterCode code2 = translate_varlist(cur->child->siblings->siblings);
    return ConcatIr(code1, code2);
  }
  else if (IsProd(cur, 1, "ParamDec"))
  {
    InterCode ret = translate_paramdec(cur->child);
    Log("Gg");
    // if(ret){
      // debug_IR(ret);
    // Log("%d",ret->arg.varibale->type->mem_size);
    // }
    // assert(0);
    return ret;
  }
}
InterCode translate_fundec(StNode *cur)
{
  if (cur == NULL || cur->is_empty)
    return NULL;
  StNode *ID = cur->child;
  Operand func = new_function(ID->st_val.str_val);
  InterCode func_code = IR_function(func);
  if (same(ID->siblings->siblings->name, "RP"))
  {
    return func_code;
  }
  InterCode code1 = translate_varlist(ID->siblings->siblings);
  InterCode tmp = code1;
  // while (tmp)
  // {
    // debug_IR(tmp);
    // tmp = tmp->next;
  // }
  // fprintf(debug_file,"\n\n");
  
  // Log("%p %d",func_code, func_code->kind);
  // Log("%p %d",code1, code1->kind);
  return ConcatIr(func_code, code1);
}

InterCode translate_extdef(StNode *cur)
{
  if (cur == NULL || cur->is_empty)
    return NULL;
  if (IsProd(cur, 3, "Specifier", "FunDec", "CompSt"))
  {
    memset(immediate,0, MAX_IMM);
    InterCode code1 = translate_fundec(cur->child->siblings);
    InterCode code2 = translate_compst(cur->child->siblings->siblings);
    InterCode code3 = ConcatIr(code1, code2);
    code_root = ConcatIr(code_root, code3);
    return NULL;
  }
  else
  {
    // TODO()
    assert(0);
  }
}
static inline char *OpName(Operand op)
{
  if(op == NULL) Assert(0,"NULL op");
  char *name = (char *)malloc(16 * sizeof(char));
  if (op->kind == OP_CONSTANT)
  {
    sprintf(name, "#%d", op->value);
  }
  else if (op->kind == OP_LABEL)
  {
    //  assert(0);
    sprintf(name, "label%d", op->var_no);
  }
  else if(op->kind == OP_FUNCTION){
      strcpy(name,op->name);
  }
  else
  {
    sprintf(name, "%c%d", op->kind == OP_TEMP ? 't' : 'v', op->var_no);
  }
  return name;
}
char operator[4][2] = {"+", "-", "*", "/"};
char relop[10][4] = {"<", "<=", ">", ">=", "==", "!="};

void Output_IR(FILE *f, InterCode op)
{
  // assert(0);
  if(op == NULL || f == NULL) return;
  switch (op->kind)
  {
  case IR_FUNCTION:
    fprintf(f, "\nFUNCTION  %s :\n", op->function.func->name);
    break;
  case IR_PARAM:
    assert(op->parametre.param);
    fprintf(f, "PARAM %s\n", OpName(op->parametre.param));
    break;
  case IR_ASSIGN:
    fprintf(f, "%s := %s\n", OpName(op->assign.left), OpName(op->assign.right));
    break;
  case IR_GOTO:
    fprintf(f, "GOTO label%d\n", op->jmp.l_jmp->var_no);
    break;
  case IR_COND_JMP:
    // Log("%s", relop[op->jump_cond.relop->value]);
    fprintf(f, "IF %s %s %s GOTO label%d\n", OpName(op->jump_cond.t1), relop[op->jump_cond.relop->value], OpName(op->jump_cond.t2), op->jump_cond.target->var_no);
    break;
  case IR_RETURN:
    fprintf(f, "RETURN %s\n", OpName(op->ret.op_ret));
    break;
  case IR_DEC:
    fprintf(f, "DEC %s %d\n", OpName(op->dec.dec_val), op->dec.dec_val->type->mem_size);
    break;
  case IR_LOADVAL:
    fprintf(f, "%s := *%s\n", OpName(op->loadval.dest_val), OpName(op->loadval.target_addr));
    break;
  case IR_GETADDR:
    fprintf(f, "%s := &%s\n", OpName(op->getaddr.dest_addr), OpName(op->loadval.target_addr));
    break;
  case IR_MEMWRITE:
    fprintf(f, "*%s := %s\n", OpName(op->memwrite.mem), OpName(op->memwrite.val));
    break;
  case IR_ADD:
  case IR_MINUS:
  case IR_MUL:
  case IR_DIV:
    fprintf(f, "%s := %s %s %s\n", OpName(op->binop.result), OpName(op->binop.op1), operator[op->kind], OpName(op->binop.op2));
    break;
  case IR_ARG:
    assert(op->arg.varibale->type);
    if ( op->arg.varibale->is_add || op->arg.varibale->type->kind == BASIC){
      fprintf(f, "ARG %s\n", OpName(op->arg.varibale));
    }
    else{
      fprintf(f, "ARG &%s\n", OpName(op->arg.varibale));
    }
    break;
  case IR_CALL:
    if(op->call.result){
      fprintf(f, "%s := CALL %s\n", OpName(op->call.result), OpName(op->call.func));
    }
    else{
      fprintf(f, "CALL %s\n",  OpName(op->call.func));
    }
    break;
  case IR_LABEL:
    fprintf(f, "LABEL %s :\n", OpName(op->label.l));
    break;
  case IR_READ:
    fprintf(f, "READ %s\n", OpName(op->read.result));
    break;
  case IR_WRITE:
    fprintf(f, "WRITE %s\n", OpName(op->write.result));
    break;
  case IR_CALADDR:
    if (!op->binop.op1->is_add)
    {
      fprintf(f, "%s := &%s + %s\n", OpName(op->binop.result), OpName(op->binop.op1), OpName(op->binop.op2));
    }
    else
    {
      fprintf(f, "%s := %s + %s\n", OpName(op->binop.result), OpName(op->binop.op1), OpName(op->binop.op2));
    }
    break;
  default:
    fprintf(stderr, "\033[31mERROR in outputIR! Unknown op kind %d.\033[0m\n", op->kind);
    // assert(0);
    break;
  }
  fflush(f);
}
