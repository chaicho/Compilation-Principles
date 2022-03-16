#ifndef __AST__
#define __AST__
#include "syntax.tab.h" 
typedef struct StNode
{
    char name[128];
    struct StNode *siblings;
    struct StNode  *child;
    int line_no;
    int token; // yylex()返回的token的值
    int symbol; //bison中的
    YYSTYPE st_val;//此时可能会出现内存问题太
    int depth;
}StNode;
extern StNode * root;
StNode * st_NodeInit(const char * nname);
StNode * st_Insert(StNode * cur, StNode *nxt);
void st_PrintTree(StNode * node,int depth );
#endif