#include "ir.h"
#include "common.h"
#include "ast.h"
#include "symbol.h"
#include "hashtable.h"
#include "semantic.h"
static inline bool CorrectNode(StNode * n, const char *name) {
 Assert(strcmp(n->name, name) == 0,"supposed:%s actual : %s",n->name,name);
}
InterCode translate_exp(StNode * exp ,HashTable sym_table  ,Operand  place){
    assert(CorrectNode(exp,'Exp'));
    if(IsProd(exp,1,'INT')){
        int cur_int = exp->child->st_val.int_val;
        return 
    }

}