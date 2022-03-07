%{
   
  #include <stdio.h> 
  #include "ast.h"
  #include "debug.h"
  extern int yylex(void); 
   // 在此声明，消除yacc生成代码时的告警
  extern int yyparse(void); 
  int errlineno = -1;
  StNode * root;
//   #define YYDEBUG
  int yydebug=1;
# define YYLLOC_DEFAULT(Cur, Rhs, N)                      \
do                                                        \
  if (N)                                                  \
    {                                                       \
      (Cur).first_line   = YYRHSLOC(Rhs, 1).first_line;   \
      (Cur).first_column = YYRHSLOC(Rhs, 1).first_column; \
      (Cur).last_line    = YYRHSLOC(Rhs, N).last_line;    \
      (Cur).last_column  = YYRHSLOC(Rhs, N).last_column;  \
      \                                                              
      (Cur).node = st_NodeInit(yytname[yyr1[yyn]]);       \
      (Cur).node->symbol =  yyr1[yyn];                   \
      (Cur).node->line_no = (Cur).first_line;           \                
      (Cur).node->child = YYRHSLOC(Rhs,1).node;\
      for(int i = 1; i < N ; ++i) {\
         YYRHSLOC(Rhs,i).node->siblings =  YYRHSLOC(Rhs,i + 1).node;\
      }\
      YYRHSLOC(Rhs,N).node -> siblings = NULL ;\
    }                                                     \
  else                                                    \
    {                                                     \
      (Cur).first_line   = (Cur).last_line   =            \
        YYRHSLOC(Rhs, 0).last_line;                       \
      (Cur).first_column = (Cur).last_column =            \
        YYRHSLOC(Rhs, 0).last_column;                     \
    }                                                     \
while (0)
%} 
%locations
%token-table
/* declared types */ 

%code requires{
  #define YYLTYPE YYLTYPE
  typedef struct YYLTYPE
  {
    int first_line;
    int first_column;
    int last_line;
    int last_column;
    char *filename;
    struct StNode * node;
  } YYLTYPE;
}

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
%token STRUCT 
%token IF 
%token ELSE
%token WHILE 
%token RETURN

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
Program : ExtDefList {root = @$.node;}
   ;

ExtDefList :  /* empty */
   | ExtDef ExtDefList
   ;

ExtDef :  Specifier ExtDecList ";"
   | Specifier  ";" 
   | error ";"
   | Specifier FunDec CompSt
   | error FunDec CompSt
   ;

ExtDecList : VarDec
   | VarDec "," ExtDecList
   ;

/* Specifiers */
Specifier  : TYPE 
   | StructSpecifier
   ;

StructSpecifier : STRUCT OptTag "{" DefList "}"
   | STRUCT OptTag "{"  error "}"
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
   | ID "(" error ")"
   | ID "(" ")"
   | error ")"
   ;

VarList : ParamDec "," VarList
   |  ParamDec 
   ;


ParamDec : Specifier VarDec
   ;



/* statements */
CompSt : "{" DefList StmtList "}"
   | error "}"
   ;

StmtList : Stmt StmtList
   | /*  empty */
   ;

Stmt : Exp SEMI
   | CompSt
   | RETURN Exp SEMI
   | IF "(" Exp ")" Stmt %prec LOWER_THAN_ELSE
   | IF "(" Exp ")" Stmt ELSE Stmt
   | WHILE "(" Exp ")" Stmt
   | error SEMI
   | IF "(" error ")" Stmt %prec LOWER_THAN_ELSE
   | IF "(" error ")" Stmt ELSE Stmt
   | IF "(" Exp ")" error ELSE Stmt
   | WHILE LP error RP Stmt
   ;



/* Local Definitions */
DefList : Def DefList
   | /* empty */
   ;

Def : Specifier DecList SEMI
   | Specifier error SEMI
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
   | "(" error ")"
   | "(" error "]"
   | "(" error "}"
   | "(" error ";"
   | ID "(" error ")"
   | ID "(" error "]"
   | ID "(" error "}"
   | ID "(" error ";"
   | Exp "[" error "]"
   | Exp "[" Exp ")"
   | Exp "[" Exp "}"
   | Exp "[" Exp ";"
   ;

Args : Exp COMMA Args
   | Exp
   ;

%% 
#include "lex.yy.c"
void yyerror(char* msg) { 
   if(errlineno == yylineno){
      return;
   }
   else{
      errlineno  = yylineno;
   }
  fprintf(stderr, "Error type B at Line %d: %s near '%s'.\n", yylineno, msg, yytext);
} 

