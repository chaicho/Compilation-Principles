#include "symbol.h"
#include "ast.h"
#include <stdlib.h>

#include <stdbool.h>
#include "hashtable.h"
#include <string.h>
#include <stdarg.h>
#include "debug.h"
extern HashTable * SymbolTable;
static inline bool CorrectNode(StNode * n, const char *name) {
 Assert(strcmp(n->name, name) == 0,"GG");
}
#define same(a,b) !strcmp(a,b)
bool IsProd(const StNode* cur, int num, ...) {
    va_list valist;
    va_start(valist, num);
    bool ret = false;
    StNode* child = cur->child;
    char* required_name ;
    for (int i = 0; i < num;  child = child->siblings ,i++) {
        if (child == NULL) {
            break;
        }
        required_name = va_arg(valist, char *);
        if (strcmp(required_name, child->name)) {
          break;
        }
    }
    ret = (child == NULL);
    va_end(valist);
    return ret;
}

void parse_VarDec(StNode * cur, Type cur_type){
    if(cur == NULL) return;
    if(IsProd(cur,1, "ID")){
        Symbol cur_symbol = malloc(sizeof(struct Symbol_));
        cur_symbol->type = cur_type;
        cur_symbol->name = strdup(cur->child->name);
        Log("%s",cur_symbol->name);
        HT_Insert(SymbolTable,cur_symbol->name,cur_symbol);
    }
    else if(IsProd(cur, 4,"VarDec","LB","INT","RB")){
        StNode * nxt  = cur->child;
        Type array_type = malloc(sizeof(struct Type_));
        array_type->kind = ARRAY;
        array_type->array.elem = cur_type;
        array_type->array.size = nxt->siblings->siblings->st_val.int_val;
        parse_VarDec(cur,array_type);
    }
}
void parse_ExtDecList(StNode * cur, Type cur_type  ){
    if(cur == NULL) return;
    parse_VarDec(cur->child,cur_type);
    assert(cur->child->siblings != NULL);
    parse_ExtDecList(cur->child->siblings->siblings,cur_type);
}
Type  parse_Specifier(StNode * cur){
  CorrectNode(cur,  "Specifier");
  StNode * spe = cur->child;
  Type  cur_type ; 
  if(IsProd(cur,1,"TYPE"))
  {
       cur_type = Basic_Init(spe);
  }
  else if(IsProd(cur , 1 , "STRUCT")){
      cur_type =  Struct_Init(spe);
  }
  return cur_type;
}
void parse_Def(StNode *cur){
    StNode *nxt= cur->child;
    Type curtype = parse_Specifier(nxt);
    
}
void parse_DefList(StNode *cur){
    if(cur == NULL || cur->is_empty) return;
    StNode * nxt= cur->child;
    parse_Def(nxt);
    parse_DefList(nxt->siblings);
}
void parse_StmtList(StNode *cur){

}
void parse_Compst(StNode *cur){
        //TODO
    Log("%s",cur->name);      
    StNode *nxt = cur->child;
     
}

FieldList parse_VarList(StNode *cur, Type  cur_Func){
    if(cur ==  NULL || same(cur->name,"RP")) return;
    StNode * tmp = cur;
    while (tmp!=NULL&& !same(tmp->name,"RP"))
    {
         assert(0);
    }
    
}
void parse_FunDec(StNode * cur, Type ret){
    if(cur == NULL) return;
    StNode * id = cur->child;
    Type  func = malloc(sizeof(struct Type_));
    func->kind = FUNCTION;  
    func->function.retType = ret; 
    
    parse_VarList(id->siblings->siblings,func);
    //func 即代表函数的TYPE


    Symbol cur_symbol = malloc(sizeof(struct Symbol_));
    cur_symbol->type = func;
    cur_symbol->name = malloc(strlen(id->st_val.str_val) + 1);
    strcpy(cur_symbol->name,id->st_val.str_val );
    Log("%s",cur_symbol->name);
}
void parse_ExtDef(StNode * cur){
    StNode * nxt= cur ->child ; 
    if(IsProd(cur, 3,"Specifier","ExtDecList","COMMA")){
        Type curtype = parse_Specifier(nxt);
        parse_ExtDecList(nxt->siblings,curtype);
        Log("Success\n");
    }
    else if(IsProd(cur, 3,"Specifier","FunDec","CompSt")){
        Type rettype = parse_Specifier(nxt);
        parse_FunDec(nxt->siblings,rettype);
        parse_Compst(nxt->siblings->siblings);
    }
}

void parse_ExtDefList(StNode * cur){
    if(cur == NULL|| cur->is_empty ) return;
    CorrectNode(cur ,"ExtDefList");
    parse_ExtDef(cur->child);
    parse_ExtDefList(cur->child->siblings);
}
void parse_tree(StNode * cur){
  parse_ExtDefList(cur->child);
}
