#include "ast.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
extern StNode * root;
StNode * st_NodeInit(const char * nname){
        StNode * curnode = (StNode *) malloc(sizeof(StNode));
        curnode->line_no = -1;  
        // strncpy(curnode->name,nname, 63);
        curnode->name =nname;
        curnode->siblings = 0; 
        curnode->child = 0;
        curnode->token = -1;
        curnode->symbol = -1;
        curnode->depth =  0;
        curnode ->is_empty = 0;
        curnode->compst_code = NULL;
        return curnode;
}
StNode * st_Insert(StNode * cur, StNode *nxt){
        if(cur->child == NULL){
                cur->child = nxt; 
        }
        else{
                nxt->siblings =  cur->child;
                cur->child =  nxt;
        }
        nxt->depth = cur->depth + 1;
}

void st_PrintTree(StNode * node,int depth){
        if(node == NULL || node -> is_empty == 1) return;
        for(int i = 0 ; i < depth; i++)  printf("  ");
        printf("%s",node->name);
        if(node->symbol!=-1) {
                printf(" (%d)",node->line_no);
        }
        else if(node->token!=-1){
                switch (node->token)
                {
                case    INT:
                        printf(": %u",node->st_val.int_val);
                        break;
                case    FLOAT:
                        printf(": %f",node->st_val.float_val);
                        break;
                case    ID:
                case    TYPE:
                        printf(": %s",node->st_val.str_val);
                        break;
                default:
                        break;
                }
        }
        else{
                assert(0);
        }
        printf("\n");
        StNode * cur = node->child;
        while (cur!= NULL)
        {
                st_PrintTree(cur,depth + 1);
                cur = cur->siblings;
        }
        return;
}