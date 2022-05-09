#ifndef __IRHELPER__
#define __IRHELPER__
#include "ir.h"
Operand new_label();
Operand new_temp();
Operand new_constant(int i);
Operand new_var(char *id);
Operand new_relop(int id);
Operand new_function(char *);
Operand new_addr();
InterCode IR_assign(Operand lft, Operand rht);
InterCode IR_binop(Operand,Operand, Operand,int);
InterCode IR_label(Operand);
InterCode IR_return(Operand ret);
InterCode IR_goto(Operand );
InterCode IR_cond_jmp(Operand t1, Operand relop, Operand t2, Operand target);
InterCode IR_arg(Operand);
InterCode IR_read(Operand);
InterCode IR_write(Operand);
InterCode IR_call(Operand,Operand);
InterCode IR_dec(Operand);
InterCode IR_getaddr(Operand dst,Operand s);
InterCode IR_loadval(Operand,Operand);
InterCode IR_memwrite(Operand,Operand);
InterCode IR_function(Operand);
InterCode IR_param(Operand);
InterCode IR_caladdr(Operand dst,Operand  base,Operand offset);
static inline void cp_op(Operand dst, Operand src){
  memcpy(dst,src,sizeof(struct Operand_));
  // assert(0);
  return ;
}
#endif