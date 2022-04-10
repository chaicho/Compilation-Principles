#include "symbol.h"
#include "hashtable.h"
#include "debug.h"
#define same(a,b) !strcmp(a,b)
char *type_name[] = {"BASIC", "ARRAY", "STRUCTURE","FUNCTION"};
extern HashTable  SymbolTable;
struct Type_ Type_int ={
  .kind  =  BASIC,
  .basic =  TYPE_INT,
  .rval = 1
};
struct  Type_ Type_float = 
{
  .kind = BASIC,
  .basic = TPYE_FLOAT,
  .rval = 1
};
Type type_int = &Type_int;
Type type_float = &Type_float;
Type Int_Init(){
  Type ret = Type_Init(BASIC);
  ret->basic = TYPE_INT;
  return ret;  
}
Type  Float_Init(){
  Type ret = Type_Init(BASIC);
  ret->basic = TPYE_FLOAT;
  return ret;  
}
Type  Basic_Init(StNode *cur){
    Log("%s",cur->st_val.str_val);
    if(!strcmp(cur->st_val.str_val ,"int"))  {
        return Int_Init();
    }
    else if(!strcmp(cur->st_val.str_val, "float")) {
        return Float_Init();
    }
}
Type Type_Init(int type){
    Type ret;
    ret = malloc(sizeof(struct Type_));
    ret->kind = type;
}
Type  Struct_Init(){
    Type ret;
    ret = malloc(sizeof(struct Type_));
    ret->kind = STRUCTURE;
    ret->structure = malloc(sizeof(struct FieldList_));
    return ret;
}
Type  Function_Init(StNode * cur, Type ret_type){
  Type ret; 
  ret = malloc(sizeof(struct Type_));
  // ret->function.paramList
}
FieldList Field_Init(StNode * cur){
    // cur->name = 
    return malloc(sizeof(struct FieldList_));
}
Symbol Symbol_Init(Type curtype, int symbol_kind){
   if(curtype == NULL) return;
   Symbol ret =malloc(sizeof(struct Symbol_));
   ret->kind = symbol_kind;
   ret->type = curtype;
   // 将当前symbol连上
   return ret;
}
void print_type(Type t,int depth ){
  
  printf("TYPE: %s",type_name[t->kind]);
  switch (t->kind)
  {
  case  BASIC:
  
    break;
  case  STRUCTURE:{ 
    printf(" name : %s",t->structure->name);
    FieldList cur = t->structure->tail;
    while (cur!=NULL)
    {
      printf("\n");
      for(int i  = 0; i <= depth; i ++) printf("  ");
      printf("name  :  %s  ",cur->name);
      print_type(cur->type,depth +  1);
      cur = cur->tail;
    }
    }
    break;
  case FUNCTION:
    printf("\nparam_num %d\n",t->function.paramNum);
    printf("Return Type: ");
    print_type(t->function.retType,depth);
    FieldList cur = t->function.paramList;
    printf("PramList:");
    while (cur!=NULL)
    {
      printf("\n");
      for(int i  = 0; i <= depth; i ++) printf("  ");
      printf("Paramname  :  %s  ",cur->name);
      print_type(cur->type,depth +  1);
      cur = cur->tail;
    }
    break;
  default:
    break;
  }
  if(depth == 0) printf("\n");
}
void ConcatField(FieldList cur,FieldList nxt){
  if(!cur) return;
  FieldList tmp = cur;
  while (tmp->tail)
  {
    tmp = tmp->tail ;
  }
  tmp->tail = nxt;
  return;
}