#include "hashtable.h"
#include "debug.h"
const int  TABLE_SIZE = 0X3fff;
#define STACK_SIZE  20
int Stack_top = 0;
HashTable * SymbolTable;
Symbol symbol_stack[STACK_SIZE] ;
unsigned hash_pjw(char* name)
 {
 unsigned  val = 0, i;
 for (; *name; ++name)
 {
 val = (val << 2) + *name;
 if (i = val & ~TABLE_SIZE) val = (val ^ (i >> 12)) & TABLE_SIZE;
 }
 return val;
}


HashTable *  HT_Init(){  
		SymbolTable = malloc(sizeof(HashTable));
    assert(SymbolTable);
	  if((SymbolTable->table = malloc(TABLE_SIZE *sizeof(HashElem *))) == NULL)
	  {
      assert(0);
	  }
	  SymbolTable->ele_max = TABLE_SIZE;
	  SymbolTable->ele_count = 0;
	  for(int i = 0; i < TABLE_SIZE; i++)
	  	SymbolTable->table[i] = NULL;
		for(int i = 0 ;i < STACK_SIZE ; i++){
			symbol_stack[i]=NULL; 
		}
	  return SymbolTable;
}

void* HT_Insert(HashTable * hasht, char* key, Symbol data)
{
	if(data == NULL)
		return NULL;
	unsigned h = hash_pjw(key) % (hasht->ele_max);
	HashElem * cur = malloc(sizeof(HashElem));
  cur->key = malloc(strlen(key) + 1);
	strcpy(cur->key, key);
	Log("Insert : %s",cur->key);
	cur->data = data;
	hasht->ele_count ++;
  cur->next = hasht->table[h];
	hasht->table[h] = cur;
	return cur;
}

Symbol HT_Find(HashTable * hasht, char* key)
{
	unsigned h = hash_pjw(key) % hasht->ele_max;
	HashElem * cur = hasht->table[h];
	while(cur != NULL)
	{
		if(!strcmp(cur->key, key)){
			Log("Found : %s",cur->key);
			return cur->data;
		}
		cur = cur->next;
	}
	return NULL;
}

void HT_Remove(HashTable* hasht, char* key)
{
	unsigned h = hash_pjw(key) % hasht->ele_max;
	HashElem * cur = hasht->table[h];
	HashElem * prev = NULL;
	while(cur != NULL)
	{
		if(!strcmp(cur->key, key))
		{
			void* ret = cur->data;
			if(prev == NULL){
				hasht->table[h] = cur->next;
      }
      else{
				prev->next = cur->next;
      }
      free(cur->key);
      free(cur);
			cur = NULL;
			hasht->ele_count --;
		}
		prev = cur;
		cur = cur->next;
	}
}

