#ifndef __IR__
#define __IR__
typedef struct Operand_* Operand;
typedef struct InterCode_* InterCode;
typedef InterCodeList_* InterCodeList;
struct Operand_ {
 enum { LABEL ,VARIABLE, CONSTANT, ADDRESS, ... } kind;
 union {
 int var_no;
 int value;
 char * name; 
 } u;
};

struct InterCode_
 {
 enum { ASSIGN, ADD, SUB, MUL, ... } kind;
 union {
 struct { Operand label} label;
 struct { Operand right, left; } assign;
 struct { Operand result, op1, op2; } binop;
 } u;
  struct InterCode_ * prev, * next;
};
struct InterCodeList_
{
   InterCode head;
   InterCode tail;
};

static inline  void ConcatIr(InterCode a, InterCode b){
    a->next =  b;
    b->prev =  a; 
};
#endif