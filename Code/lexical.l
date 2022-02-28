%option yylineno
%{
    #define DEBUG

    #include  "debug.h"
    /* #include "syntax.tab.h" */
%}

WS  [\r\t\n]
DIGIT [0-9]
DECINT  ([1-9]{DIGIT}*)|0
OCTINT  0[0-7]+
HEXINT  0[xX][0-9a-fA-F]+
INT    {DECINT}|{OCTINT}|{HEXINT}
FLOATN ({DIGIT}+\.{DIGIT}+)
FLOATE [+-]?({DIGIT}+\.{DIGIT}*|\.{DIGIT}+)[eE][+-]?{DIGIT}+
FLOAT  {FLOATE}|{FLOATN}
%%
{INT}   {Log("INT");}
{WS}    {Log("Donothing");}
{FLOAT}  {Log("FLOAT");}
"//" {
    char c = input();
    while (c != '\n') c = input();
}
"+" { Log("PLUS");}
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
