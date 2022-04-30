#ifndef __SEMANTIC__
#define __SEMANTIC__
#include "ast.h"
void parse_tree(StNode *);
bool IsProd(const StNode* cur, int num, ...);
#endif