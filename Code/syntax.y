%{
   
  #include <stdio.h> 
  extern int yylex(void); 
   // 在此声明，消除yacc生成代码时的告警
  extern int yyparse(void); 
%} 
%locations
/* declared types */ 

%union { 
   int int_val; 
   float float_val; 
   int relop_val ;
   char *str_val; 
} 

/* declared tokens */ 
%token <int_val> INT "int"
%token <float_val> FLOAT "float"
%token PLUS "+"
%token MINUS "-"
%token MUL "*"
%token DIV "/"
%token SEMI  ";"
%token COMMA ":"
%token ASSIGNOP "="
%token RELOP
%token AND  "&&"
%token OR   "||"
%token DOT  "."
%token NOT  "!"
%token TYPE ID
%token LP "("
%token RP ")"
%token LB "["
%token RB "]"
%token LC "{"
%token RC "}"
%token STRUCT IF ELSE WHILE


/* declared non-terminals */ 
%type <float_val> Exp Factor Term 

%% 
Calc :  /* empty */ 
   | Exp  { printf("=%lf\n",$1); } 
   ; 
Exp : Factor 
   | Exp "+" Factor  { $$ = $1 + $3; } 
   | Exp "-" Factor  { $$ = $1 - $3; } 
   ; 
Factor : Term 
   | Factor "*" Term  { $$ = $1 * $3; } 
   | Factor "/" Term  { $$ = $1 / $3; } 
   ; 
Term : "int" { $$ = $1; } 
   |  "float"  { $$ = $1; } 
   ; 

%% 
#include "lex.yy.c"
yyerror(char* msg) { 
    fprintf(stderr, "error: %s\n", msg); 
} 
