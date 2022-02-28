#include <stdio.h>
extern FILE * yyin;
#define FLEXDEBUG
// #define BISONDEBUG

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
    yyparse(); 
    return 0; 
} 
#endif