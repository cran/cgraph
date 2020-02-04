/*
Copyright 2020 Ron Triepels

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#ifndef STACK_H
#define STACK_H

#define R_NO_REMAP

#include <R.h>
#include <Rinternals.h>

/*
 * PUBLIC STRUCTS
 */

typedef struct {
  int top;
  int size;
  SEXP *data;
} cg_stack_t;

/*
 * PUBLIC METHODS
 */

cg_stack_t* cg_stack_allocate(const int size);

int cg_stack_is_empty(const cg_stack_t *stack);

int cg_stack_is_full(const cg_stack_t *stack);

void cg_stack_push(cg_stack_t *stack, const SEXP x);

SEXP cg_stack_top(const cg_stack_t *stack);

void cg_stack_pop(cg_stack_t *stack);

#endif
