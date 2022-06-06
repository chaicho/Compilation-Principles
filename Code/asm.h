#ifndef __ASM__
#define __ASM__
#include "ir.h"
#include <stdio.h>
// extern struct Intercode_;
typedef struct Reg_
{
  int reg_no;
 
}Register_;
void Generate_code(FILE * f , struct InterCode_* root_code);
#endif