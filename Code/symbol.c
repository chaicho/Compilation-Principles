#include "symbol.h"
#include "hashtable.h"
#include "debug.h"
#define same(a,b) !strcmp(a,b)
char *type_name[] = {"BASIC", "ARRAY", "STRUCTURE","FUNCTION"};
extern HashTable  SymbolTable;
int structure_cnt =  0;
int parent[1000020];
int siz[1000020];
void set_make(int i){
    parent[i] = i;
    siz[i] = 1;
    return;
}
int set_find(int i){
    if(parent[i]==i)
        return i;
    else
        return parent[i] = set_find(parent[i]);
}
void set_union(int i,int j){
    int a = set_find(i);
    int b = set_find(j);
    if(a!=b){
        if(siz[b]<siz[a]) {
          int tmp = a;
          a = b;
          b = tmp;
        }
        parent[a] = b;
        siz[b] += siz[a];
    }
    return;
}
struct Type_ Type_int ={
  .kind  =  BASIC,
  .mem_size = 4,
  .basic =  TYPE_INT,
};
struct  Type_ Type_float = 
{
  .kind = BASIC,
  .mem_size = 4, 
  .basic = TPYE_FLOAT,
};
Type type_int = &Type_int;
Type type_float = &Type_float;
Type Int_Init(){
  Type ret = Type_Init(BASIC);
  ret->basic = TYPE_INT;
  ret->mem_size = 4;
  return ret;  
}
Type  Float_Init(){
  Type ret = Type_Init(BASIC);
  ret->basic = TPYE_FLOAT;
  ret->mem_size =  4;
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
    set_make(structure_cnt); 
    ret->type_num = structure_cnt++;
    return ret;
}
Type  Function_Init(StNode * cur, Type ret_type){
  Type ret; 
  ret = malloc(sizeof(struct Type_));
  // ret->function.paramList
}
FieldList Field_Init(StNode * cur){
    // cur->name = 
    FieldList ret= malloc(sizeof(struct FieldList_));
    ret->tail = NULL;
    return ret;
}
Symbol Symbol_Init(Type curtype, int symbol_kind){

   Symbol ret =malloc(sizeof(struct Symbol_));
   ret->kind = symbol_kind;
   ret->type = curtype;
   // 将当前symbol连上
   return ret;
}
void print_type(Type t,int depth ){
  #ifndef DEBUG
  return;
  #endif
  printf("TYPE: %s",type_name[t->kind]);
  switch (t->kind)
  {
  case  BASIC:
    if(t->basic == TYPE_INT){
      printf("INT\n");
    }
    else if(t->basic == TPYE_FLOAT){
      printf("Float\n");
    }
    else{
      assert(0);
    }
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
  case ARRAY:
      printf("%d elements with type\n",t->array.size);
      print_type(t->array.elem,depth+1);
  default:
    break;
  }
  if(depth == 0) printf("\n");
}
void ConcatField(FieldList cur,FieldList nxt){
  if(!cur){
    return;
  }
  FieldList tmp = cur;
  while (tmp->tail)
  {
    tmp = tmp->tail ;
    assert(tmp!=tmp->tail);
  }
  tmp->tail = nxt;
  return;
}