#include <stdio.h>stm
#include"ast.h"
#include "debug.h"
#include "semantic.h"
#include "ir.h"
#define L3
extern FILE * yyin;
// #define FLEXDEBUG
// #define BISONDEBUG
extern int errlineno;
extern yydebug;
extern InterCode code_root; 

#ifdef FLEXDEBUG
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
#elif defined(BISONDEBUG) 
int main(){
    // yydebug = 1;
    yyparse();
}
#else

int main(int argc, char** argv) 
{ 
    if (argc <= 1) return 1; 
    FILE* f = fopen(argv[1], "r"); 
    if (!f) 
    { 
        perror(argv[1]); 
        return 1; 
    } 
    yyrestart(f);
    yydebug = 1;
    yyparse(); 
    if(errlineno ==  -1 ) {
        // st_PrintTree(root , 0 );
        parse_tree(root);
        // assert(0);
        #ifdef L3
        // Log("%s",argv[2]);
        FILE * outdir =  fopen (argv[2], "w+");
        assert(outdir);
        InterCode tmp = code_root;
        while (tmp)
        {
            Output_IR(outdir,tmp);
            // assert(0);
            tmp = tmp->next;
        }
        #endif
        
    }
    return 0; 
} 
#endif