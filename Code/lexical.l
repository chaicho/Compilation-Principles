%option yylineno
%{
    #include <string.h>
    #include  "debug.h"
    #include <stdlib.h>
    #include "syntax.tab.h"
    int yycolumn = 1;
    char *ptr;
    enum{
        LT, LE, GT, GE, EQ, NE
    };
    #define YY_USER_ACTION                                  \
        yylloc.first_line   = yylloc.last_line = yylineno;  \
        yylloc.first_column = yycolumn;                     \
        yylloc.last_column  = yycolumn + yyleng - 1;        \
        yycolumn += yyleng;
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
%}

WS   [ \r\t]
DIGIT [0-9]
DECINT  ([1-9]{DIGIT}*)|0
OCTINT  0[0-7]+
HEXINT  0[xX][0-9a-fA-F]+
INT    {DECINT}|{OCTINT}|{HEXINT}
FLOATN ({DIGIT}+\.{DIGIT}+)
FLOATE ({DIGIT}+\.{DIGIT}*|\.{DIGIT}+)[eE][+-]?{DIGIT}+
FLOAT  {FLOATE}|{FLOATN}
ch_    [a-zA-Z0-9]|_
ID     ([a-zA-Z_]{ch_}*)
TYPE   int|float  
COMMENT_BLOCK   (\/\*([^*]|[\r\n]|(\*+([^*\/]|[\r\n])))*\*+\/)|(\/\/.*)
%%
{OCTINT}   {  yylval.int_val = strtol(yytext ,&ptr, 8);   REJECT; }
{DECINT}   {  yylval.int_val = strtol(yytext ,&ptr, 10);  REJECT; }
{HEXINT}   {  yylval.int_val = strtol(yytext ,&ptr, 16);  REJECT; }
{INT}      {RETURNT(INT);}
\n   { yycolumn = 1; }

{WS}    { }

{FLOAT} { yylval.float_val = atof(yytext);Log("FLOAT  %lf",yylval.float_val); RETURNT (FLOAT);}
{COMMENT_BLOCK}  { }

"+"     { Log("PLUS"); RETURNT (PLUS); }

"-"     { Log("MINUS"); RETURNT (MINUS);}

"*"     { Log("MULTIPLY"); RETURNT (STAR);}

"/"     { Log("DIVIDE"); RETURNT (DIV);}

"<"     { Log("LE") ;installrelop(LE); RETURNT (RELOP);}
">"     { Log("GT") ;installrelop(GT); RETURNT (RELOP);}
"=="    { Log("EQ") ;installrelop(EQ); RETURNT (RELOP);}
"!="    { Log("NE") ;installrelop(NE); RETURNT (RELOP);}
"<="    { Log("LE") ;installrelop(LE); RETURNT (RELOP);}
">="    { Log("GE") ;installrelop(GE); RETURNT (RELOP);}
"("     { Log("LP") ;RETURNT (LP) ;}
")"     { Log("RP") ;RETURNT (RP) ;}
"["     { Log("LB") ;RETURNT (LB) ;}
"]"     { Log("RB") ;RETURNT (RB) ;}
"{"     { Log("LC") ;RETURNT (LC) ;}
"}"     { Log("RC") ;RETURNT (RC) ;}
";"     { Log(";")  ;RETURNT (SEMI);}
"="     { Log("=")  ;RETURNT (ASSIGNOP); }
"||"    { Log("||") ;RETURNT (OR);}
"&&"    { Log("&&") ;RETURNT (AND);}
"."     { Log(".") ;RETURNT (DOT);}
"!"     { Log("!") ;RETURNT (NOT);}
","     { Log(",") ;RETURNT (COMMA);}

"if"     {RETURNT (IF);}
"else"   {RETURNT (ELSE);}
"while"  {RETURNT (WHILE);}
"return" {RETURNT (RETURN);}
"struct" {RETURNT (STRUCT);}
{TYPE}  {Log("TYPE"); yylval.str_val = strdup(yytext); RETURNT (TYPE);}

{ID}    {Log("ID"); yylval.str_val = strdup(yytext); RETURNT (ID);} 


\"[^\"]*\" {
    if (yytext[yyleng - 2] == '\\') {
    yyless(yyleng - 1);
    yymore();
    Log("%s",yytext);
    } else {
        Log("%s",yytext);
        Log("endofstring");
    }
}

. { 
    flexerror( "Mysterious character"); 
 }
%%
inline void   installID(){
    yylval.str_val = strdup(yytext);
}
inline void   installrelop(int relop_type){
    yylval.relop_val =  relop_type; 
}

void flexerror(const char* msg) {
  if ( errlineno  == yylineno) return;
  else errlineno = yylineno;
  printf("Error type A at Line %d: %s\n", yylineno, msg);
}
/* #ifdef FLEXDEBUG
int main(int argc ,char ** argv){
    if(argc > 1){
        if(!(yyin  = fopen(argv[1],"r"))){
            perror(argv[1]);
            return 1;
        }
    }
    while(yylex() != 0 );
    return 0;
}
#endif */
