#ifndef __HASH__
#define __HASH__
#include "symbol.h"
#include <assert.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
typedef struct HashElem_ {
	struct HashElem_ * next; 
	struct  Symbol_ *	 data;	
	char * key; 	
}HashElem ,* HashElem_p;
 typedef struct HashTable_{
  HashElem ** table;	// The table containaing elements
	int ele_max;	//数据元素存储基址，动态分配数组
	int ele_count;	//元素个数
} HashTable,* HashTable_p ;
unsigned hash_pjw(char* name);
HashTable * HT_Init( );
void* HT_Insert(HashTable * hasht, char* key, Symbol data);
Symbol HT_Find(HashTable * hasht, char* key);
void HT_Remove(HashTable* hasht, char* key);
Symbol get_stacktop();
void set_stacktop(Symbol);
void delete_Scope();
void new_Scope();
#endif