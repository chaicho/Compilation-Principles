#ifndef __COMMON__
#define __COMMON__
#include <stddef.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
enum{
    LT, LE, GT, GE, EQ, NE
};
static inline char *cpstr(char * s){
    char * ret = malloc(strlen(s) + 1);
    strcpy(ret,s);
    return ret;
}

#endif