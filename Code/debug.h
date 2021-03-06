#ifndef __DEBUG_H__
#define __DEBUG_H__
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
// #define DEBUG

#ifdef DEBUG
#define Log(format, ...) \
  printf("\33[1;35m[%s:%d,%s] " format "\33[0m\n", \
      __FILE__, __LINE__, __func__, ## __VA_ARGS__)

#define Assert(cond, ...) \
  do { \
    if (!(cond)) { \
      fflush(stdout); \
      fprintf(stderr, "\33[1;31m"); \
      fprintf(stderr, __VA_ARGS__); \
      fprintf(stderr, "\33[0m\n"); \
      assert(cond); \
    } \
  } while (0)
#else
#define Log(format,...) 
#define Assert(exp,...) assert(exp)
#endif

#endif
