#ifndef LLIST_ASM_H
#define LLIST_ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Structure de la liste chainée pour la table des symboles */
<<<<<<< HEAD
typedef struct Element Element;
typedef struct LList LList;
typedef enum Bool { false = 0, true = 1 } Bool;
typedef enum Types { TypeInt, TypeFloat, TypeChar, TypeBool } Types;

typedef enum op_codes {
    ADD, MUL, SUB, DIV, COP,
    AFC, LOAD, STORE, EQU,
    INF, INFE, SUP, SUPE,
    JMP, JMPC
} op_codes;

struct Element {
    int       elemId;
    op_codes  op_code;
    int       a;
    int       b;
    int       c;
    Element*  suivant;
};

struct LList {
    Element* first;
    int size;
    int next_id;
=======
typedef struct Element_asm Element_asm;
typedef struct LList_asm LList_asm;

struct Element_asm {
  int elemId;
  char* opp;
  int A;
  int B;
  int C;
  Element_asm* suivant;
};

struct LList_asm {
  Element_asm* first;
  int size;
  int next_id;
>>>>>>> 11366a9d2179d6c3195263b75da847b12f5c82fd
};

/* Fonctions pour la liste chainée */
LList_asm* llist_asm_create();
int ins_add(LList_asm* list, char* op, int Rx, int Ry, int Rz);

// int add_tmp(LList* llist, Types type, int depth);
// int get_id_by_name(LList* llist, char* name);
// int get_addr(LList* llist, int id);
// int llist_remove(LList* llist, int id);

#endif
