#include "opt.h"
#include "ir.h"
#include "semantic.h"
#include "symbol.h"
#include "hashtable.h"
extern HashTable_p var_table;
void deletecode(InterCode cur){
    assert(cur && cur->next && cur->prev);
    cur->next->prev = cur->prev;
    cur->prev->next = cur->next;
}
void OptIr(InterCode codelist){
    InterCode cur =  codelist;
    //将赋值的中间变量舍去
    while (cur && cur->next)
    {
      InterCode nxt = cur->next;
      if(cur ->kind == IR_ASSIGN && nxt->kind ==IR_ASSIGN){
        if(cur->assign.left->kind == OP_TEMP && cur->assign.left == nxt->assign.right ){
          nxt->assign.right = cur->assign.right;
          deletecode(cur);
        }
      }
      cur = nxt;
    }
    //将所有没有出现在语句右侧的删除
    
}