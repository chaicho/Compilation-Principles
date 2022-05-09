#include "symbol.h"
#include "ast.h"
#include <stdlib.h>
#include "ir.h"
#include <stdbool.h>
#include "hashtable.h"
#include <string.h>
#include <stdarg.h>
#include "debug.h"
#define same(a,b) !strcmp(a,b)
extern  Type type_int;
extern  Type type_float;
extern int Stack_top;
int errline = -1;
int annoymous_cnt = 0 ;
bool right_defined = true;
FieldList parse_DefList(StNode *cur,int type);
Type parse_Exp(StNode *);
bool same_type(Type a, Type b);

extern HashTable * SymbolTable;
bool is_symbol = true; //表示当前是否要加入符号表
bool is_param = false;
static inline void throwError(int ErdecrorType,int line_num);
static inline bool CorrectNode(StNode * n, const char *name) {
 Assert(strcmp(n->name, name) == 0,"supposed:%s actual : %s",n->name,name);
}
StNode * func_list[2000];
int func_cnt =  0;
extern InterCode * compst_codes;
extern int cur_compst ;
void print_node(StNode *cur){
    #ifndef DEBUG
        return;
    #endif
    StNode * tmp =cur->child;
    while (tmp!= NULL)
    {
        printf("%s",tmp->name);
        if(tmp) printf("---->");
        tmp = tmp->siblings;
    }
    printf("\n");
    return;
    
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
        if(a==b) return true;
        if(set_find(a->type_num) == set_find(b->type_num)) return true;
        FieldList p_a = a->structure;
        FieldList p_b = b->structure;
        bool ret =  same_field( p_a->tail , p_b->tail , STRUCTURE);
        if(ret) set_union(a->type_num,b->type_num);
        return ret;
    }
    else if(a->kind == FUNCTION){
        return same_type(a->function.retType,b->function.retType) && same_field(a->function.paramList, b->function.paramList,FUNCTION) ;
    }
}
bool IsProd(const StNode* cur, int num, ...) {
    va_list valist;
    va_start(valist, num);
    bool ret = false;
    StNode* child = cur->child;
    char* required_name ;
    int i;
    for ( i = 0; i < num;  child = child->siblings ,i++) {
        if (child == NULL) {
            break;
        }
        required_name = va_arg(valist, char *);
        if (strcmp(required_name, child->name)) {
          break;
        }
    }
    ret = ((child == NULL) && i == num);
    #ifdef DEBUG    
    // if(ret) {
    //     printf("PROD: ");
    //     print_node(cur);
    // }
    #endif
    va_end(valist);
    return ret;
}
bool is_rval(StNode * cur){
    bool ret=  IsProd(cur, 1, "ID") || IsProd(cur, 4, "Exp","LB","Exp","RB") || IsProd(cur,3,"Exp","DOT","ID");
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
        ret->type = parse_Exp(nxt);
        ret->tail = NULL;
        return ret;
    }
}
Type parse_Exp(StNode * cur){
    if( cur == NULL || cur->is_empty ) return;
    CorrectNode(cur,"Exp");
    StNode *nxt = cur->child;
    Type ret = NULL;
    Type tmp = NULL;
    if(IsProd(cur , 3 ,"Exp","ASSIGNOP","Exp")){
        Type a = parse_Exp(nxt);    
        Type b = parse_Exp(nxt->siblings->siblings);
        if( a == NULL){
            throwError(1,cur->line_no);
            return NULL;
        }   
        if( b == NULL ) {
            return  NULL;
        }
        if( !is_rval(nxt) ){
            
            throwError(6, cur->line_no);
            return NULL;
        }
        if(!same_type(a,b)){
            throwError(5,cur->line_no);
            return NULL;
        }
        ret = a;
        return ret;
    }
    else if(IsProd(cur, 3, "Exp", "AND", "Exp") || IsProd(cur, 3, "Exp", "OR", "Exp") ){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        if(!same_type(a,b) || !same_type(a,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        ret = Int_Init();
        return ret;
    }
    else if(IsProd(cur, 3, "Exp", "RELOP", "Exp")){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        
        if(!same_type(a,b)){
            throwError(7,cur->line_no);
            return NULL;
        }
        return type_int;
    }
    else if(IsProd(cur,2, "NOT","Exp")){
        if(!(tmp = parse_Exp(nxt->siblings))|| !same_type(tmp,type_int)){
            throwError(7,cur->line_no);
            return NULL;
        }
        return type_int;
    }
    else if(IsProd(cur, 3, "Exp", "PLUS", "Exp") || IsProd(cur, 3, "Exp", "MINUS", "Exp") || IsProd(cur, 3, "Exp", "STAR", "Exp") || IsProd(cur, 3, "Exp", "DIV", "Exp")){
        Type a = parse_Exp(nxt);
        Type b = parse_Exp(nxt->siblings->siblings);
        
        if(a == NULL || b == NULL){
            return  NULL;
        }

        if(!same_type(a,b) ){
            
            throwError(7,cur->line_no);
            return NULL;
        }
        // assert(0);
        return a;
    }
    else if(IsProd(cur, 2, "MINUS", "Exp" )){
        if(!(tmp = parse_Exp(nxt->siblings))){
            return NULL;
        }
        return tmp;
    }
    else if(IsProd(cur, 4, "ID","LP","Args","RP")){
        Symbol cur_func = HT_Find(SymbolTable,nxt->st_val.str_val);
        if(cur_func == NULL){
            throwError(2,cur->line_no);
            return NULL;
        }
        else if(cur_func -> kind != SYM_FUNCTION){
            throwError(11,cur->line_no);
            return NULL;
        }
        Type functype= cur_func->type;

        FieldList func_params = parse_Args(nxt->siblings->siblings);
        Type calledfunctype  = Type_Init(FUNCTION);
        calledfunctype->function.paramList = func_params;
        calledfunctype->function.retType = functype->function.retType;
        if(!same_type(calledfunctype,functype)){
            throwError(9 , cur->line_no);
            return NULL;
        }
        ret = calledfunctype->function.retType;
        return ret;
    }
    else if(IsProd(cur, 3,"ID" ,"LP","RP")){
        Symbol tmp= NULL;
        if(!(tmp =  HT_Find(SymbolTable,nxt->st_val.str_val))){
            throwError(2 , cur->line_no);
            return NULL;
        }
        else if(tmp->kind != SYM_FUNCTION){
            throwError(11,cur->line_no);
            return NULL;
        }
        else if(tmp->type->function.paramList!= NULL){
            throwError(9,cur->line_no);
            return NULL;
        }
        return tmp->type->function.retType;
    }
    else if(IsProd(cur,4,"Exp", "LB","Exp","RB")){
        Type first_type = parse_Exp(nxt);
        Type second_type = parse_Exp(nxt->siblings->siblings);
        if(first_type == NULL || second_type == NULL){
            return NULL;
        }
        if( first_type->kind != ARRAY){
            // throwError();
            throwError(10,cur->line_no);
            return NULL;
        }
        if(!same_type(second_type,type_int)){
            throwError(12,cur->line_no);
            return NULL;
        }
        return first_type->array.elem;

    }
    else if(IsProd(cur,3,"Exp","DOT","ID")){
        Type firsttype = parse_Exp(nxt);
        if(firsttype == NULL ) {
            return NULL;
        }
        char * id = nxt->siblings->siblings->st_val.str_val;

        if(firsttype->kind !=STRUCTURE){
            throwError(13,cur->line_no);
            return NULL;
        }
        FieldList curfield = firsttype->structure->tail;
        while (curfield!=NULL)
        {
            // print_type(curfield->type,0);
            if(same(curfield->name,id)){
                // printf("%s\n",curfield->name);
                // assert(0);
                return curfield->type;
            }
            curfield = curfield ->tail;
        }
        // assert(0);
        throwError(14,cur->line_no);
        return NULL;
    }
    else if(IsProd(cur,1, "ID")){
        Symbol cursymbol = HT_Find(SymbolTable,nxt->st_val.str_val);
        if(!cursymbol || (cursymbol ->kind == SYM_STRUCT)){
            Log("%s",nxt->st_val.str_val);
            // printf("%s\n",nxt->st_val.str_val);
            throwError(1,cur->line_no);
            return NULL;
        }
        return cursymbol->type;
    }
    else if(IsProd(cur,1,"INT")){
        return type_int;
    }
    else if(IsProd(cur,1, "FLOAT")){
        Log("%p",type_float);
        return type_float;
    }
   else if(IsProd(cur,3,"LP","Exp","RP")){
       return parse_Exp(nxt->siblings);
    }
    else{
        assert(0);
    }
}
Type final_type ;
FieldList parse_VarDec(StNode * cur, Type cur_type,int type){
    if(cur == NULL ) return NULL;
    
    if(IsProd(cur,1, "ID")){
        final_type = cur_type;
        FieldList ret = NULL;
        Symbol cursymbol = HT_Find(SymbolTable,cur->child->st_val.str_val);
        if(cursymbol){
            if( cursymbol->kind == SYM_STRUCT ){
                throwError(3,cur ->line_no);
                return NULL;
            }
            else {
                if(cursymbol->depth == Stack_top){
                    if(type == SYM_STRUCT) throwError(15,cur->line_no);
                    else if(type == SYM_FUNCTION) throwError(3,cur->line_no);
                    else throwError(3,cur->line_no);
                    return NULL;
                }
            }
        }
        Symbol cur_symbol = Symbol_Init(cur_type, SYM_VAR);
        cur_symbol->name = cpstr(cur->child->st_val.str_val);
        HT_Insert(SymbolTable,cur_symbol->name,cur_symbol);
        
        assert(HT_Find(SymbolTable,cur_symbol->name));
        // printf("%s :  %d\n",cur->child->st_val.str_val , cur_symbol->type->rval);
        if(type == SYM_FUNCTION || type == SYM_STRUCT) {
            FieldList cur_param = malloc(sizeof(struct FieldList_ ));
            cur_param->type =   cur_type;
            cur_param->name= cpstr(cur->child->st_val.str_val);
            cur_param->tail = NULL;
            ret = cur_param;
            Log("%s",cur_param->name);
        }
        return ret;
    }
    else if(IsProd(cur, 4,"VarDec","LB","INT","RB")){
        StNode * nxt  = cur->child;
        Type array_type = malloc(sizeof(struct Type_));
        array_type->kind = ARRAY;
        array_type->array.elem = cur_type;
        array_type->array.size = nxt->siblings->siblings->st_val.int_val;
        array_type->mem_size = array_type->array.size * cur_type->mem_size;
        FieldList ret =  parse_VarDec(nxt,array_type,type);

    }
}
FieldList parse_ExtDecList(StNode * cur, Type cur_type,int type ){
    if(cur == NULL || cur_type == NULL) return NULL;
    
    StNode *nxt= cur->child;
    if(IsProd(cur,1,"VarDec")){
        return parse_VarDec(nxt,cur_type,type);
    }
    else if(IsProd(cur,3,"VarDec","COMMA","ExtDecList")){
        parse_VarDec(nxt,cur_type,type);
        parse_ExtDecList(nxt->siblings->siblings,cur_type,type);
    }
}

Type parse_StructSpecifier(StNode *cur){
    StNode *nxt = cur->child;
    if(IsProd(cur,2,"STRUCT","Tag")){
        Symbol targetStruct = HT_Find(SymbolTable,nxt->siblings->child->st_val.str_val);
        if(!targetStruct || !(targetStruct->type)){
            throwError(17,cur->line_no); 
            return NULL;
        }
        return targetStruct->type;
    }
    else if(IsProd(cur,5,"STRUCT","OptTag","LC","DefList","RC")){
        Type cur_type = Struct_Init();
        if(nxt->siblings->is_empty ){ 
            char tmp[100];
            sprintf(tmp,"Annoymous_dashkdkasj%d",annoymous_cnt++);
            cur_type->structure->name = cpstr(tmp);
        }   
        else{
            cur_type->structure->name = cpstr(nxt->siblings->child->st_val.str_val);
        }

        if(HT_Find(SymbolTable,cur_type->structure->name)){
            Log("%s",cur_type->structure->name);
            throwError(16,cur->line_no);
            return NULL;
        }
        Symbol new_struct =Symbol_Init(cur_type,SYM_STRUCT);
        if(!new_struct) return NULL; 
        new_struct->name = cpstr(cur_type->structure->name);
        new_struct->type = NULL;
        HT_Insert(SymbolTable,new_struct->name, new_struct);
        new_Scope();
        cur_type->structure->tail = parse_DefList(nxt->siblings->siblings->siblings,SYM_STRUCT) ;
        delete_Scope();
        FieldList cur = cur_type->structure->tail;
        while (cur)
        {
            cur_type->mem_size += cur->type->mem_size;
            cur = cur->tail;
        }
        new_struct->type = cur_type;
        
        return cur_type;
    }
    else {
        print_node(cur);
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
FieldList parse_Dec(StNode *cur,Type curtype,int type){
    if(cur == NULL ) return NULL;
    CorrectNode(cur,"Dec");
    StNode *nxt = cur->child;
    if(IsProd(cur,1,"VarDec")){
        return parse_VarDec(nxt,curtype,type);
    }
    else if(IsProd(cur,3,"VarDec","ASSIGNOP","Exp")){
        //TODO()
        // printf("%p %d\n",curtype,curtype->rval);
        if(type == SYM_STRUCT){
            throwError(15,cur->line_no);
            // return  NULL;
        }
        
        FieldList ret = parse_VarDec(nxt,curtype,type);
        Type assignedtype = parse_Exp(nxt->siblings->siblings);
        if(curtype== NULL || assignedtype == NULL) {
            // return NULL;
        }
        if(!same_type(assignedtype,final_type)){
            throwError(5,cur->line_no);
            // return NULL;
        }

        return ret;
    }
    // assert(0);

}
FieldList parse_DecList(StNode *cur, Type curtype,int type){
    if(cur == NULL ) return NULL;
    StNode *nxt = cur->child;
    FieldList ret;
    if(IsProd(cur,1,"Dec")){
        ret = parse_Dec(nxt,curtype,type);
    }
    else if(IsProd(cur,3,"Dec","COMMA","DecList")){
        ret = parse_Dec(nxt,curtype,type);
        FieldList nxt_field =  parse_DecList(nxt->siblings->siblings,curtype,type);
        ConcatField(ret,nxt_field);
    }
    return ret;
}

FieldList parse_Def(StNode *cur,int type){
    StNode *nxt= cur->child;
    Type curtype = parse_Specifier(nxt);
    // print_type(curtype,0);
    FieldList tmp = parse_DecList(nxt->siblings,curtype , type);
    return tmp;
}
FieldList parse_DefList(StNode *cur,int type){
    if(cur == NULL || cur->is_empty) return NULL;
    StNode * nxt= cur->child;
    FieldList ret = parse_Def(nxt,type);
    FieldList nxt_field = parse_DefList(nxt->siblings,type);
    ConcatField(ret,nxt_field);
    return ret;
}
void parse_Stmt(StNode *cur, Type supposed_type,int type){
    if(cur == NULL ) return;
    StNode * nxt = cur->child;

    if(IsProd(cur, 2 , "Exp","SEMI")) {
        parse_Exp(nxt);
    }
    else if(IsProd(cur, 1 ,"CompSt")){
        new_Scope();
        parse_Compst(nxt, supposed_type,type);
        delete_Scope();
    }
    else if(IsProd(cur, 3 , "RETURN","Exp","SEMI")){
        Type returnedtype = parse_Exp(nxt->siblings);
        if(!same_type(supposed_type, returnedtype)){
            throwError(8,cur->line_no);
            return;
        }
    }
    else if(IsProd(cur,5,"IF","LP", "Exp","RP", "Stmt")){
        Type logic_type = parse_Exp(nxt->siblings->siblings);
        if(!same_type(logic_type,type_int)){
            throwError(7,cur->line_no);
        }
        parse_Stmt(nxt->siblings->siblings->siblings->siblings,supposed_type,type);
    }
    else if(IsProd(cur,7,"IF","LP", "Exp","RP", "Stmt","ELSE","Stmt")){
        Type logic_type = parse_Exp(nxt->siblings->siblings);
        if(!same_type(logic_type,type_int)){
            throwError(7,cur->line_no);
        }
        parse_Stmt(nxt->siblings->siblings->siblings->siblings,supposed_type ,type);
        parse_Stmt(nxt->siblings->siblings->siblings->siblings->siblings->siblings,supposed_type, type);
        return;
    }
    else if(IsProd(cur, 5,"WHILE","LP","Exp","RP","Stmt")){
        Type logic_type = parse_Exp(nxt->siblings->siblings);
        if(!same_type(logic_type,type_int)){
            throwError(7,cur->line_no);
        }
        parse_Stmt(nxt->siblings->siblings->siblings->siblings,supposed_type,type);

    }
}

void parse_StmtList(StNode * cur, Type cur_type,int type){
    if(cur == NULL || cur->is_empty) return;
    StNode * nxt = cur->child;
    parse_Stmt(nxt,cur_type,type);
    parse_StmtList(nxt->siblings,cur_type,type);
}

void parse_Compst(StNode *cur, Type rettype,int type){
        //TODO
    StNode *nxt = cur->child;
    parse_DefList(nxt->siblings,type);
    parse_StmtList(nxt->siblings->siblings,rettype,type);
    // cur->compst_code = translate_compst(cur);
    // debug_IR(cur->compst_code);
}
FieldList parse_ParamDec(StNode *cur,int type){
    StNode * nxt= cur->child;
    Type curtype = parse_Specifier(nxt);
    return parse_VarDec(nxt->siblings,curtype,type);
}
FieldList parse_VarList(StNode *cur,int type){
    if(cur ==  NULL || same(cur->name,"RP")) return NULL;
    StNode * nxt = cur->child;
    if(IsProd(cur, 1, "ParamDec")){
        return parse_ParamDec(nxt,type);
    }
    else{
        // assert(0);
        FieldList nxt_param = parse_ParamDec(nxt,type);
        ConcatField(nxt_param,parse_VarList(nxt->siblings->siblings,type));
        return nxt_param;
    }
}
bool is_def = true;

Type parse_FunDec(StNode * cur, Type ret){
    if(cur == NULL || ret == NULL) return NULL;
    StNode * id = cur->child;
    Symbol curfunc = HT_Find(SymbolTable ,id->st_val.str_val); 
    if(curfunc && curfunc->type->function.defined && is_def){
        throwError(4,cur->line_no);
        right_defined = false;
    }
    else if(!curfunc){
        curfunc = Symbol_Init(NULL,SYM_FUNCTION);
        curfunc->name = cpstr(id->st_val.str_val);
        curfunc->type = NULL; 
        HT_Insert(SymbolTable,curfunc->name,curfunc);
        
    }
    new_Scope();
    FieldList paramlist = parse_VarList(id->siblings->siblings,SYM_FUNCTION);
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
    func->function.line_no = cur->line_no;
    func->function.defined = false;
    
    if(curfunc->type && !same_type(func,curfunc->type)){
            // assert(0);
        // print_type(curfunc->type,0);
        // print_type(func,0);
        throwError(19,cur->line_no);
        right_defined  = false;
    }
    if(!curfunc->type){
         curfunc->type = func;
    }
    if(right_defined) func_list[func_cnt++] = id;
    return curfunc->type;
}   
void parse_ExtDef(StNode * cur){
    StNode * nxt= cur ->child ; 
    if(IsProd(cur, 3,"Specifier","ExtDecList","SEMI")){
        Type curtype = parse_Specifier(nxt);
        parse_ExtDecList(nxt->siblings,curtype,SYM_VAR);
        Log("Success\n");
    }
    else if(IsProd(cur, 3,"Specifier","FunDec","CompSt")){
        //进行解析
        Type rettype = parse_Specifier(nxt);
        Type functype = parse_FunDec(nxt->siblings,rettype);   
        if(functype == NULL){
            return;
        }        
        parse_Compst(nxt->siblings->siblings,rettype,SYM_VAR);
        translate_extdef(cur);
        delete_Scope();
        if(right_defined) functype->function.defined = true;
        right_defined = true;
    }
    else if(IsProd(cur,2 ,"Specifier","SEMI")){
        Type structtype = parse_Specifier(nxt);
        // print_type(structtype,0);
        
        if(structtype == NULL || structtype->kind != STRUCTURE){
            return;
        }
    }
    else if(IsProd(cur, 3,"Specifier","FunDec","SEMI")){
        //进行解析
        Type rettype = parse_Specifier(nxt);
        is_def =false;
        Type functype = parse_FunDec(nxt->siblings,rettype);
        delete_Scope();
        is_def = true;
        right_defined  = true;
        if(functype == NULL){
            return;
        }
        // Symbol cur_symbol = Symbol_Init(functype,SYM_FUNCTION);
        // if(!cur_symbol) return;
        // cur_symbol->name = cpstr(nxt->siblings->child->st_val.str_val);
        // HT_Insert(SymbolTable,cur_symbol->name,cur_symbol);
        
    }
    else{
        assert(0);
    }
}

void parse_ExtDefList(StNode * cur){
    if(cur == NULL|| cur->is_empty ) return;
    CorrectNode(cur ,"ExtDefList");
    parse_ExtDef(cur->child);
    parse_ExtDefList(cur->child->siblings);
}
void IR_Init(){
    Type read_type = Type_Init(FUNCTION);
    read_type->function.retType =  type_int;

    Symbol read_symbol = Symbol_Init(read_type, SYM_FUNCTION);
    read_symbol->name = cpstr("read");
    HT_Insert(SymbolTable,read_symbol->name,read_symbol);
    
    Type write_type = Type_Init(FUNCTION);
    write_type->function.paramList = malloc(sizeof(struct FieldList_));
    write_type->function.paramList->type = type_int;
    write_type->function.retType = type_int;
    Symbol write_symbol = Symbol_Init(write_type, SYM_FUNCTION);
    write_symbol->name = cpstr("write");

    HT_Insert(SymbolTable,write_symbol->name,write_symbol);     
}
void parse_tree(StNode * cur){
  HT_Init();
  IR_Init();
  parse_ExtDefList(cur->child);
  for(int i= 0  ;i < func_cnt;i++){
    //   Log("%s",func_list[i]->st_val.str_val);
      if(!HT_Find(SymbolTable,func_list[i]->st_val.str_val)->type->function.defined){
          throwError(18,func_list[i]->line_no);
      }
  }
//   assert(0);
}


char *err_message[] = {
  { "gg"  },
  { "Undefined variable"  },
  { "Undefined function"  },
  { "Redefined variable"  },
  { "Redefined function" },
  { "Type mismatched for assignment" },
  { "The left-hand side of an assignment must be a variable"  },
  { "Type mismatched for operands"  },
  { "Type mismatched for return" },
  { "Mismatched arguments function "  },
  { "Use [] on non-array variable"  },
  { "Use () on non-function variable "  },
  { "Non-int inside []"  },
  { "Illegal use of \".\""  },
  { "Access to undefined fieldlist in sturct "},
  { "Redefinition or initialization of fieldlsit " },
  { "Duplicated struct name with prior struct or variable  " },
  { "Use of undefined sturct name"},
  { "Undefined function "},
  {"Inconsistent declaration of function"}
};

static inline void throwError(int type,int line_num){
   if(errline == line_num) return;
   else errline = line_num;
   printf("Error type %d at Line %d: %s.\n",type,line_num,err_message[type]);
}