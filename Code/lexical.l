%option yylineno
%{
    #define DEBUG
    #include <string.h>
    #include  "debug.h"
    #include "syntax.tab.h"
    int yycolumn = 1;
    #define YY_USER_ACTION                                  \
        yylloc.first_line   = yylloc.last_line = yylineno;  \
        yylloc.first_column = yycolumn;                     \
        yylloc.last_column  = yycolumn + yyleng - 1;        \
        yycolumn += yyleng;

%}

WS  [ ] 
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
TPYE   int|float  
%%
{INT}   { Log("INT");  yylval.int_val = atoi(yytext); return INT; }

"\n"    {   yycolumn = 1; }

{WS}    {Log("Donothing");}

{FLOAT} { yylval.float_val = atof(yytext);Log("FLOAT  %lf",yylval.float_val); return FLOAT;}

"//" {
    char c = input();
    while (c != '\n') c = input();
}

"+" { Log("PLUS"); return PLUS; }

"-" { Log("MINUS"); return MINUS;}

"*" { Log("MULTIPLY"); return MUL;}

"/" { Log("DIVIDE"); return DIV;}

{TPYE}  {Log("TPYE"); }

{ID}    {Log("ID"); } 


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
 printf("Error type A at Line %d: Mysterious characters \'%s\'\n",
 yylineno, yytext);
 }
%%
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
