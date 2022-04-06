#include "symbol.h"
#include "ast.h"
#include <stdlib.h>

#include <stdbool.h>
#include "hashtable.h"
#include <string.h>
#include <stdarg.h>
#include "debug.h"
#define same(a,b) !strcmp(a,b)
extern Type type_int;
extern Type type_float;
int annoymous_cnt = 0 ;
FieldList parse_DefList(StNode *cur);
Type parse_Exp(StNode *);
bool same_type(Type a, Type b);
extern HashTable * SymbolTable;
bool is_symbol = true;//表示当前是否要加入符号表
void throwError(int ErrorType,int line_num);
static inline bool CorrectNode(StNode * n, const char *name) {
 Assert(strcmp(n->name, name) == 0,"GG");
}

bool same_field(FieldList a, FieldList b,int type){
    bool ret = true;
    FieldList p_a = a;
    FieldList p_b = b;
    while (p_a != NULL && p_b != NULL)
    {
        if(!same_type(p_a->type,p_b->type)){
            return false;
        }   
        p_a= p_a->tail;
        p_b= p_b->tail;
    }
    if(p_a == NULL && p_b == NULL) return true;
    else if(p_a!=NULL || p_b!=NULL) return false;
    return false;
}
char *cpstr(char * s){
    char * ret = malloc(strlen(s) + 1);
    strcpy(ret,s);
    return ret;
}
bool same_type(Type a, Type b){
    if(a== NULL && b==NULL) return true;
    else if(a==NULL || b== NULL) return false;
    if(a->kind!=b->kind){
        return false;
    }
    if(a->kind == BASIC){
        return a->basic==b->basic;
    }
    else if(a->kind == ARRAY){
        return same_type(a->array.elem,b->array.elem);
    }
    else if(a->kind == STRUCTURE){
        FieldList p_a = a->structure;
        FieldList p_b = b->structure;
        return same_field( p_a->tail , p_b->tail , STRUCTURE);
    }
    else if(a->kind == FUNCTION){
        return same_field(a->function.paramList, b->function.paramList,FUNCTION);
    }
}
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
FieldList parse_Args(StNode * cur){
    if(cur == NULL ) return NULL;
    StNode * nxt = cur->child;
    if(IsProd(cur,3, "Exp","COMMA","Args")){
        Type first_type = parse_Exp(nxt);
        FieldList ret = Field_Init(cur);
        ret->type = first_type;
        FieldList nxtfield = parse_Args(nxt->siblings->siblings);
        ConcatField(ret,nxtfield);
        return ret;
    }   
    else if(IsProd(cur, 1,"Exp")){
        FieldList ret = Field_Init(cur);
        ret->type = parse_Args(nxt);
        ret->tail = NULL;
        return ret;
    }
}
Type parse_Exp(StNode * cur){
    CorrectNode(cur,"Exp");
    StNode *nxt = cur->child;
    Type ret = NULL;
    Type tmp = NULL;
    if(IsProd(cur , 3 ,"Exp","ASSIGNOP","Exp")){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        if(!same_type(a,b)){
            throwError(5,cur->line_no);
            return NULL;
        }
        ret = a;
        return ret;
    }
    else if(IsProd(cur, 3, "Exp", "AND", "Exp") || IsProd(cur, 3, "Exp", "OR", "Exp") || IsProd(cur, 3, "Exp", "RELOP", "Exp")){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        if(!same_type(a,b) || !same_type(a,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        ret = Type_Init(BASIC);
        ret->basic = INT;
        ret->rval = true;
        return ret;
    }
    else if(IsProd(cur,2, "NOT","Exp")){
        if(!(tmp = parse_Exp(nxt->siblings))|| !same_type(tmp,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        ret = Type_Init(BASIC);
        ret->basic = INT;
        ret->rval = true;
        return ret;
    }
    else if(IsProd(cur, 3, "Exp", "PLUS", "Exp") || IsProd(cur, 3, "Exp", "MINUS", "Exp") || IsProd(cur, 3, "Exp", "STAR", "Exp") || IsProd(cur, 3, "Exp", "DIV", "Exp")){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        if(!same_type(a,b) || !same_type(a,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        ret = a;
        return ret;
    }
    else if(IsProd(cur, 2, "MINUS", "Exp" )){
        if(!(tmp = parse_Exp(nxt->siblings))|| !same_type(tmp,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        return tmp;
    }
    else if(IsProd(cur, 4, "ID","LP","Args","RP")){
        Symbol cur_func = HT_Find(SymbolTable,nxt->name);
        if(cur_func == NULL){
            throwError(2,cur->line_no);
            return NULL;
        }
        Type functype= cur_func->type;
        FieldList func_params = parse_Args(nxt->siblings->siblings);
        Type calledfunctype  = Type_Init(FUNCTION);
        calledfunctype->function.paramList = func_params;
        if(!same_type(calledfunctype,functype)){
            throwError(9 , cur->line_no);
            return NULL;
        }

        ret = functype->function.retType;
        
        return ret;
    }
    else if(IsProd(cur, 3,"ID" ,"Lp","RP")){

    }
    else if(IsProd(cur,4,"Exp", "LB","Exp","RB")){

    }
    else if(IsProd(cur,3,"Exp","DOT","ID")){

    }
    else if(IsProd(cur,1, "ID")){

    }
    else if(IsProd(cur,1,"INT")){

    }
    else if(IsProd(cur,1, "FLOAT")){

    }
}

FieldList parse_VarDec(StNode * cur, Type cur_type){
    if(cur == NULL || cur_type == NULL) return NULL;
    if(IsProd(cur,1, "ID")){
        if(HT_Find(SymbolTable,cur->child->st_val.str_val)){
            throwError(3,cur->line_no);
            return NULL;
        }
        if(is_symbol){
            Symbol cur_symbol = malloc(sizeof(struct Symbol_));
            cur_symbol->type = cur_type;
            cur_symbol->name = cpstr(cur->child->st_val.str_val);
            Log("%s",cur_symbol->name);
            HT_Insert(SymbolTable,cur_symbol->name,cur_symbol);
            // assert(0);
            assert(HT_Find(SymbolTable,cur_symbol->name));
            return NULL;
        }
        else{
            FieldList cur_param = malloc(sizeof(struct FieldList_ ));
            cur_param->type =   cur_type;
            cur_param->name= cpstr(cur->child->st_val.str_val);
            cur_param->tail = NULL;
            return cur_param;
        }
    }
    else if(IsProd(cur, 4,"VarDec","LB","INT","RB")){
        StNode * nxt  = cur->child;
        Type array_type = malloc(sizeof(struct Type_));
        array_type->kind = ARRAY;
        array_type->array.elem = cur_type;
        array_type->array.size = nxt->siblings->siblings->st_val.int_val;
        return parse_VarDec(nxt,array_type);
    }
}
FieldList parse_ExtDecList(StNode * cur, Type cur_type ){
    if(cur == NULL || cur_type == NULL) return NULL;
    
    StNode *nxt= cur->child;
    if(IsProd(cur,1,"VarDec")){
        return parse_VarDec(nxt,cur_type);
    }
    else if(IsProd(cur,3,"VarDec","COMMA","ExtDecList")){
        parse_VarDec(nxt,cur_type);
        parse_ExtDecList(nxt->siblings->siblings,cur_type);
    }
}

Type parse_StructSpecifier(StNode *cur){
    StNode *nxt = cur->child;
    if(IsProd(cur,2,"STRUCT","Tag")){
        Symbol targetStruct = HT_Find(SymbolTable,nxt->siblings->child->st_val.str_val);
        if(!targetStruct){
            throwError(17,cur->line_no); 
            return NULL;
        }
    }
    else if(IsProd(cur,5,"STRUCT","OptTag","LC","DefList","RC")){
        Type cur_type = Struct_Init();
        is_symbol = false;
        cur_type->structure->tail = parse_DefList(nxt->siblings->siblings->siblings) ;
        is_symbol = true;
        if(nxt->siblings->child->is_empty){ 
            char tmp[100];
            sprintf(tmp,"Annoymous_dashkdkasj%d",annoymous_cnt++);
            cur_type->structure->name = cpstr(tmp);
        }   
        else{
            cur_type->structure->name = cpstr(nxt->siblings->child->st_val.str_val);
            Log("%s",cur_type->structure->name);
        }
        return cur_type;
    }
}
Type  parse_Specifier(StNode * cur){
  CorrectNode(cur,  "Specifier");
  StNode * spe = cur->child;
  Type  cur_type ; 
  if(IsProd(cur,1,"TYPE"))
  {
    cur_type = Basic_Init(spe);
  }
  else if(IsProd(cur , 1 , "StructSpecifier")){
   
    cur_type = parse_StructSpecifier(cur->child);
  }
  else {
      assert(0);
  }
  return cur_type;
}
FieldList parse_Dec(StNode *cur,Type curtype){
    if(cur == NULL || curtype == NULL) return NULL;
    StNode *nxt = cur->child;
    if(IsProd(cur,1,"VarDec")){
        return parse_VarDec(nxt,curtype);
    }
    else if(IsProd(cur,3,"VarDec","ASSIGNOP","EXP")){
        //TODO()
        return parse_VarDec(nxt,curtype);
    }
}
FieldList parse_DecList(StNode *cur, Type curtype){
    if(cur == NULL || curtype == NULL) return NULL;
    StNode *nxt = cur->child;
    FieldList ret;
    if(IsProd(cur,1,"Dec")){
        ret = parse_Dec(nxt,curtype);
    }
    else if(IsProd(cur,3,"Dec","COMMA","DecList")){
        ret = parse_Dec(nxt,curtype);
        FieldList nxt_field =  parse_DecList(nxt->siblings->siblings,curtype);
        ConcatField(ret,nxt_field);
    }
    return ret;
}

FieldList parse_Def(StNode *cur){
    StNode *nxt= cur->child;
    Type curtype = parse_Specifier(nxt);
    return parse_DecList(nxt->siblings,curtype);
}
FieldList parse_DefList(StNode *cur){
    if(cur == NULL || cur->is_empty) return NULL;
    StNode * nxt= cur->child;
    FieldList ret = parse_Def(nxt);
    FieldList nxt_field = parse_DefList(nxt->siblings);
    ConcatField(ret,nxt_field);
    return ret;
}

void parse_StmtList(StNode *cur){

}
void parse_Compst(StNode *cur, Type rettype){
        //TODO
    Log("%s",cur->name);      
    StNode *nxt = cur->child;
     
}
FieldList parse_ParamDec(StNode *cur){
    StNode * nxt= cur->child;
    Type curtype = parse_Specifier(nxt);
    return parse_VarDec(nxt->siblings,curtype);
}
FieldList parse_VarList(StNode *cur){
    if(cur ==  NULL || same(cur->name,"RP")) return NULL;
    StNode * nxt = cur->child;
    if(IsProd(cur, 1, "ParamDec")){
        return parse_ParamDec(nxt);
    }
    else{
        // assert(0);
        FieldList nxt_param = parse_ParamDec(nxt);
        ConcatField(nxt_param,parse_VarList(nxt->siblings->siblings));
        return nxt_param;
    }
}
Type parse_FunDec(StNode * cur, Type ret){
    if(cur == NULL || ret == NULL) return NULL;
    StNode * id = cur->child;
    if(HT_Find(SymbolTable ,id->st_val.str_val)){
        throwError(4,cur->line_no);
        return NULL;
    }
    is_symbol = false;
    FieldList paramlist = parse_VarList(id->siblings->siblings);
    is_symbol = true;

    //func 即代表函数的TYPE
    FieldList cur_param = paramlist;
    int param_cnt =  0;
    while (cur_param!=NULL)
    {

        Log("%s",cur_param->name);
        cur_param = cur_param->tail;
        param_cnt++;
    }
    Type  func = malloc(sizeof(struct Type_));
    func->kind = FUNCTION;  
    func->function.retType = ret; 
    func->function.paramNum = param_cnt;
    func->function.paramList = paramlist;
}
void parse_ExtDef(StNode * cur){
    StNode * nxt= cur ->child ; 
    if(IsProd(cur, 3,"Specifier","ExtDecList","SEMI")){
        Type curtype = parse_Specifier(nxt);
        parse_ExtDecList(nxt->siblings,curtype);
        Log("Success\n");
    }
    else if(IsProd(cur, 3,"Specifier","FunDec","CompSt")){
        //进行解析
        Type rettype = parse_Specifier(nxt);
        Type functype = parse_FunDec(nxt->siblings,rettype);   
        if(functype == NULL){
            return;
        }
        parse_Compst(nxt->siblings->siblings,rettype);
        


        Symbol cur_symbol = Symbol_Init(functype,SYM_FUNCTION);
        if(!cur_symbol) return;
        cur_symbol->name = cpstr(nxt->siblings->child->st_val.str_val);
        HT_Insert(SymbolTable,cur_symbol->name,cur_symbol);
        print_type(functype,0);

    }
    else if(IsProd(cur,2 ,"Specifier","SEMI")){
        Type structtype = parse_Specifier(nxt);
        // print_type(structtype,0);
        if(structtype->kind != STRUCTURE){
            return;
        }
        else {
            Symbol new_struct =Symbol_Init(structtype,SYM_STRUCT);
            if(!new_struct) return; 
            new_struct->name = cpstr(structtype->structure->name);
            new_struct->type = structtype;
            HT_Insert(SymbolTable,new_struct->name, new_struct);
        }
    }
}

void parse_ExtDefList(StNode * cur){
    if(cur == NULL|| cur->is_empty ) return;
    CorrectNode(cur ,"ExtDefList");
    parse_ExtDef(cur->child);
    parse_ExtDefList(cur->child->siblings);
}
void parse_tree(StNode * cur){
  HT_Init();
  parse_ExtDefList(cur->child);
}


char *err_message[] = {
  { "gg"  },
  { "Undefined variable "  },
  { "Undefined function "  },
  { "Duplicate name "  },
  { "Function redefinition" },
  { "Mismatched type for = " },
  { "Rvalue on the right of ="  },
  { "Mismatched type for operands"  },
  { "Mismatched type for return" },
  { "Mismatched arguments function "  },
  { "Use [] on non-array variable"  },
  { "Use () on non-function variable "  },
  { "Non-int inside []"  },
  { "Use . on non-struct variable"  },
  { "Access to undefined fieldlist in sturct "},
  { "Redefinition or initialization of fieldlsit " },
  { "Duplicated struct name with prior struct or variable  " },
  { "Use of undefined sturct name"}
};

void throwError(int type,int line_num){
   printf("Error type %d at Line %d: %s.\n",type,line_num,err_message[type]);
}