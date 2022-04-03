#include "symbol.h"
#include "hashtable.h"
#include "debug.h"
#define same(a,b) !strcmp(a,b)

extern HashTable  SymbolTable;
struct Type_ type_int ={
  .kind  =  BASIC,
  .basic =  TYPE_INT
};
struct  Type_ type_float = 
{
  .kind = BASIC,
  .basic = TPYE_FLOAT
};

Type  Basic_Init(StNode *cur){
    Log("%s",cur->st_val.str_val);
    if(!strcmp(cur->st_val.str_val ,"int"))  {
        return &type_int;
    }
    else if(!strcmp(cur->st_val.str_val, "float")) {
        return &type_float;
    }
}
Type  Struct_Init(StNode * cur){

}
Type  Function_Init(StNode * cur, Type ret_type){
  Type ret; 
  ret = malloc(sizeof(struct Type_));
  // ret->function.paramList
}
FieldList Field_Init(StNode * cur){
    // cur->name = 
}