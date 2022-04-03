 #ifndef __SYMBOL__
 #define __SYMBOL__
#include "ast.h"
typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct Param_* Param;
typedef struct Func_* Func;
typedef struct Symbol_* Symbol;
 

 struct Type_
{
  enum { BASIC, ARRAY, STRUCTURE , FUNCTION  } kind;
  union
  {
  // 基本类型
  enum{ TYPE_INT,TPYE_FLOAT} basic;
  // 数组类型信息包括元素类型与数组大小构成
  struct { Type  elem; int size; } array;
  // 结构体类型信息是一个链表
  FieldList  structure;
  // 函数类型是包括参数个数与不同类型的参数的
  struct {  
    Type  retType; 
    int paramNum; 
    FieldList paramList; } function;
  };

};
 struct FieldList_
{
  char* name; // 域的名字
  Type  type; // 域的类型
  FieldList  tail; // 下一个域
};


struct Symbol_
{
   Type  type;
   char * name;
   Symbol  next;
};
Type Basic_Init(StNode * );
Type Struct_Init(StNode * );
Type Function_Init(StNode *,Type);
FieldList Field_Init(StNode *);
#endif