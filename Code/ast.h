#ifndef __AST__
#define __AST__
#include "syntax.tab.h" 
typedef struct StNode
{
    char name[64];
    struct StNode *siblings;
    struct StNode  *child;
    int line_no;
    int token; //如果token = -1则说明是语法单元,否则说明是词法单元
    int symbol;
    YYSTYPE st_val;//此时可能会出现内存问题太
    int depth;
}StNode;
extern StNode * root;
StNode * st_NodeInit(const char * nname);
StNode * st_Insert(StNode * cur, StNode *nxt);
void st_PrintTree(StNode * node,int depth );
#endif