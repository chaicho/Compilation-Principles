#ifndef __SEMANTIC__
#define __SEMANTIC__
#include "ast.h"
#include <stdbool.h>
void parse_tree(StNode *);
void print_node(StNode *cur);
bool IsProd(const StNode* cur, int num, ...);
#endif