#include "hashtable.h"
#include "debug.h"
const int  TABLE_SIZE = 0X3fff;
#define STACK_SIZE  20

int Stack_top = 0;
HashTable * SymbolTable;
Symbol scope_stack[STACK_SIZE];

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
Symbol get_stacktop(){
		return scope_stack[Stack_top];
}

void set_stacktop(Symbol a ){
	 scope_stack[Stack_top] = a;
}

HashTable *  HT_Init(){  
		SymbolTable = malloc(sizeof(HashTable));
    assert(SymbolTable);
	  if((SymbolTable->table = malloc(TABLE_SIZE *sizeof(HashElem *))) == NULL)
	  {
      assert(0);
	  }
	  SymbolTable->ele_max = TABLE_SIZE;
		Log("%d",SymbolTable->ele_max)	;
	  SymbolTable->ele_count = 0;
	  for(int i = 0; i < TABLE_SIZE; i++)
	  	SymbolTable->table[i] = NULL;
		for(int i = 0 ;i < STACK_SIZE ; i++){
			scope_stack[i] = NULL; 
		}
	  return SymbolTable;
}

void* HT_Insert(HashTable * hasht, char* key, Symbol data)
{
	if(data == NULL)
		return NULL;

	Symbol curtop = get_stacktop();
  data->next = curtop;
  set_stacktop(data);

	unsigned h = hash_pjw(key) % (hasht->ele_max);
	HashElem * cur = malloc(sizeof(HashElem));
  cur->key = malloc(strlen(key) + 1);
	strcpy(cur->key, key);
	Log("Insert : %s to %d",cur->key,h);
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
	Log("Delete :  %s",key);
	HashElem * cur = hasht->table[h];
	// Assert(cur,"%s SLOT %d",key,h);
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
			return;
		}
		prev = cur;
		cur = cur->next;
	}

}

void new_Scope(){
		Log("Enter new scope");
		Stack_top++;
		scope_stack[Stack_top] = NULL;
}
void delete_Scope(){
	 	Log("Begin Delete");
		Symbol cur = scope_stack[Stack_top];
		while (cur)
		{
			  Log("remove %s",cur->name);
				HT_Remove(SymbolTable,cur->name);
				cur = cur->next;
		}
		scope_stack[Stack_top] =  NULL;
		Stack_top--;
		Log("End Delete");
		// assert(0);
}

