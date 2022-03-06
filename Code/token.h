#ifndef __TOKEN__
#define __TOKEN__
#include "ast.h"
#include "string.h"
#define STR(s) #s
extern YYLTYPE yylloc;
#define RETURNT(TOKEN)\                       
do{              \      
        yylloc.node = st_NodeInit(#TOKEN);\
        StNode * curnode = yylloc.node;\
        curnode->line_no = yylloc.first_line; \ 
        curnode->st_val = yylval;\  
        curnode->token = TOKEN; \
        Log("%s %d %d",curnode->name,curnode->line_no, TOKEN);\
}                                           \              
while (0);                                  \
return TOKEN;                               

#endif