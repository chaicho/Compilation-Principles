%{
   
  #include <stdio.h> 
  extern int yylex(void); 
   // 在此声明，消除yacc生成代码时的告警
  extern int yyparse(void); 
  int yydebug=1;
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
%token STAR "*"
%token DIV "/"
%token SEMI  ";"
%token COMMA ","
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
%token STRUCT IF ELSE WHILE RETURN


/* declared non-terminals */ 
// %type <float_val> Exp Factor Term 

/* Priority Definitions*/
%right ASSIGNOP
%left  OR
%left  AND
%left  RELOP
%left  PLUS MINUS
%left  STAR DIV
%right NOT
%left  DOT LB RB LP RP

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%% 
/* High-level Definitions */
Program : ExtDefList
   ;

ExtDefList :  /* empty */
   | ExtDef ExtDefList
   ;

ExtDef :  Specifier ExtDecList ";"
   | Specifier  ";" {printf("Specifier");}
   | Specifier FunDec CompSt
   ;

ExtDecList : VarDec
   | VarDec "," ExtDecList
   ;

/* Specifiers */
Specifier  : TYPE 
   | StructSpecifier
   ;

StructSpecifier : STRUCT OptTag LC DefList RC
   | STRUCT Tag
   ;

OptTag : /* empty */
   | ID
   ;

Tag  :  ID
   ; 


/* Declarators */

VarDec : ID
   | VarDec "[" INT "]"
   ;

FunDec : ID "(" VarList ")"
   | ID "(" ")"
   ;

VarList : ParamDec "," VarList
   |  ParamDec 
   ;


ParamDec : Specifier VarDec
   ;



/* statements */
CompSt : LC DefList StmtList RC
   ;

StmtList : Stmt StmtList
   | /*  empty */
   ;

Stmt : Exp SEMI
   | CompSt
   | RETURN Exp SEMI
   | IF LP Exp RP Stmt %prec LOWER_THAN_ELSE
   | IF LP Exp RP Stmt ELSE Stmt
   | WHILE LP Exp RP Stmt
   ;



/* Local Definitions */
DefList : Def DefList
   | /* empty */
   ;

Def : Specifier DecList SEMI
   ;

DecList : Dec
   | Dec COMMA DecList
   ;

Dec : VarDec
   | VarDec ASSIGNOP Exp  
   ;

/* 7.1.7 Expressions */

Exp : Exp "=" Exp
   | Exp "&&" Exp
   | Exp "||" Exp
   | Exp RELOP Exp
   | Exp "+" Exp
   | Exp "-" Exp
   | Exp "*" Exp
   | Exp "/" Exp
   | "(" Exp ")"
   | "-" Exp
   | "!" Exp
   | ID "(" Args ")"
   | ID "(" ")"
   | Exp "[" Exp "]"
   | Exp "." ID
   | ID
   | INT
   | FLOAT
   ;

Args : Exp COMMA Args
   | Exp
   ;

%% 
#include "lex.yy.c"
yyerror(char* msg) { 
    fprintf(stderr, "error: %s\n", msg); 
} 
