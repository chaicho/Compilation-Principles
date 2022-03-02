%option yylineno
%{
    #define DEBUG
    #include <string.h>
    #include  "debug.h"
    #include "syntax.tab.h"
    int yycolumn = 1;

    enum{
        LT, LE, GT, GE, EQ, NE
    };
    #define YY_USER_ACTION                                  \
        yylloc.first_line   = yylloc.last_line = yylineno;  \
        yylloc.first_column = yycolumn;                     \
        yylloc.last_column  = yycolumn + yyleng - 1;        \
        yycolumn += yyleng;
    
%}

WS   [\r\n\t ]
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
%%
{INT}   { Log("INT");  yylval.int_val = atoi(yytext);  return INT; }

"\n"    {   yycolumn = 1; }

{WS}    { }

{FLOAT} { yylval.float_val = atof(yytext);Log("FLOAT  %lf",yylval.float_val); return FLOAT;}

"//" {
    char c = input();
    while (c != '\n') c = input();
}

"+"     { Log("PLUS"); return (PLUS); }

"-"     { Log("MINUS"); return (MINUS);}

"*"     { Log("MULTIPLY"); return (STAR);}

"/"     { Log("DIVIDE"); return (DIV);}

"<"     { Log("LE") ;installrelop(LE); return RELOP;}
">"     { Log("GT") ;installrelop(GT); return RELOP;}
"=="    { Log("EQ") ;installrelop(EQ); return RELOP;}
"!="    { Log("NE") ;installrelop(NE); return RELOP;}
"<="    { Log("LE") ;installrelop(LE); return RELOP;}
">="    { Log("GE") ;installrelop(GE); return RELOP;}
"("     { Log("LP") ;return (LP) ;}
")"     { Log("RP") ;return (RP) ;}
"["     { Log("LB") ;return (LB) ;}
"]"     { Log("RB") ;return (RB) ;}
"{"     { Log("LC") ;return (LC) ;}
"}"     { Log("RC") ;return (RC) ;}
";"     { Log(";")  ;return SEMI;}
"="     { Log("=")  ;return ASSIGNOP; }
"||"    { Log("||") ;return OR;}
"&&"    { Log("&&") ;return AND;}
"."     { Log(".") ;return DOT;}
"!"     { Log("!") ;return NOT;}
","     { Log(",") ;return COMMA;;}
{TYPE}  {Log("TYPE");return (TYPE);}

{ID}    {Log("ID"); return ID;} 


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
inline void   installID(){
    yylval.str_val = strdup(yytext);
}
inline void   installrelop(int relop_type){
    yylval.relop_val =  relop_type; 
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
