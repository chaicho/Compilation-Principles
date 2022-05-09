#ifndef __IR__
#define __IR__
#include "semantic.h"
#include "common.h"
#include "debug.h"
typedef struct Operand_*  Operand;
typedef struct InterCode_*  InterCode;
typedef struct InterCodeList_*  InterCodeList;
typedef struct IRpair_*  IRpair;

enum IR_KIND{
    IR_ADD, 
    IR_MINUS,
    IR_MUL,
    IR_DIV,
    IR_LABEL,
    IR_ASSIGN,
    IR_RETURN,
    IR_GOTO,
    IR_COND_JMP,
    IR_ARG,
    IR_CALL,
    IR_DEC,
    IR_PARAM,
    IR_GETADDR,
    IR_LOADVAL,
    IR_MEMWRITE,
    IR_FUNCTION,
    IR_READ,
    IR_WRITE,
    IR_CALADDR
};
enum OP_KIND{ 
  OP_LABEL ,
  OP_VARIABLE, 
  OP_CONSTANT, 
  OP_ADDRESS, 
  OP_TEMP, 
  OP_RELOP,
  OP_FUNCTION
};

struct Operand_ {
 enum OP_KIND kind;
 bool is_add;
 struct Type_ * type;
 Operand addr_op;
 union {
    int var_no;
    int value;
    char * name; 
    unsigned int address;
    
 };
};
struct InterCode_
{
    enum IR_KIND kind;
    union {
      struct { Operand l;} label;
      struct { Operand right, left; } assign;
      struct { Operand result, op1, op2; } binop;
      struct { Operand op_ret;} ret;
      struct { Operand l_jmp;} jmp;
      struct { Operand t1, relop, t2, target;} jump_cond;
      struct { Operand varibale;} arg; 
      struct { Operand result;} read, write;
      struct { Operand result; Operand func;} call;
      struct { Operand dec_val;} dec;
      struct { Operand dest_addr; Operand target_val;} getaddr;
      struct { Operand dest_val; Operand target_addr;} loadval; 
      struct { Operand mem; Operand val;} memwrite;
      struct { Operand func;} function;
      struct { Operand param;} parametre;
      // struct { Operand dst; Operand getaddr;}
      }
    ;
    struct InterCode_ * prev, * next;
};
struct InterCodeList_
{
   InterCode head;
   InterCode tail;
};
struct IRpair_
{
  InterCode code;
  struct Type_ * type;
  bool is_addr;
};

static inline  InterCode ConcatIr(InterCode a, InterCode b){
    // assert(!a && b);
    if(a == NULL)  return b;
    if(b == NULL) {
      return a;
    }
    if(a== NULL && b == NULL)  return NULL;  
    InterCode atail = a;
    while (atail->next)
    {
       atail = atail->next;
    }
    atail -> next =  b;
    b->prev =  atail; 
    return a;
};

// static inline IRpair  make_pair(InterCode ir, Type type, bool  b){
//     IRpair ret = malloc(sizeof(struct IRpair_));
//     ret->code = ir;
//     ret->type = type;
//     ret->is_addr = b;
//     return ret;
// }
InterCode translate_exp(StNode *exp, Operand place,bool lval);
InterCode translate_cond(StNode *cond, Operand a ,Operand b);
InterCode translate_args(StNode *args,InterCodeList a);
InterCode translate_compst(StNode *compst);
InterCode translate_deflist(StNode *deflist);
InterCode translate_def(StNode *def);
InterCode translate_declist(StNode *declist);
InterCode translate_dec(StNode *dec,bool is_param);
InterCode translate_vardec(StNode *vardec);
InterCode translate_stmtlist(StNode *cur);
InterCode translate_stmtlist(StNode *cur);
InterCode translate_extdef(StNode * cur);
static inline void ListAppend( InterCodeList l,InterCode c){
  if(l->head == NULL)  l->head = c;
  else{
    l-> head = ConcatIr(l->head,c);
    l->tail = c;
  }
}
static inline InterCode ListReverse(InterCodeList list){
    InterCode tmp = NULL;
    InterCode current = list->head;
    InterCode ret; 
    while (current) {
        tmp = current->prev; 
        current->prev = current->next;
        if(!current->next) ret = current; 
        current->next = tmp;           
        current = current->prev; 
    }
    return ret;
}
void debug_IR(InterCode code);
// void debug_ir(InterCode a);
static inline char *OpName(Operand op);
void Output_IR(FILE * f,InterCode a);

#endif