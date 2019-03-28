#ifndef LLIST_ASM_H
#define LLIST_ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "LList.h" //Incluse pour le type Bool

/* Structure de la liste chainée pour la table des symboles */
typedef struct Element_asm Element_asm;
typedef struct LList_asm LList_asm;

typedef enum op_codes {
    ADD, MUL, SOU, DIV, COP,
    AFC, LOAD, STORE, EQU,
    INF, INFE, SUP, SUPE,
    JMP, JMPC
} op_codes;

struct Element_asm {
  int elemId;
  op_codes op_code;
  int Ri;
  int Rj;
  int Rk;
  Element_asm* suivant;
};

struct LList_asm {
  Element_asm* first;
  int size;
  int next_id;
};

/* Fonctions pour la liste chainée */
LList_asm* llist_asm_create();
int ins_add(LList_asm* list, op_codes op, int Rx, int Ry, int Rz);
int print_asm(LList_asm* list);
// int add_tmp(LList* llist, Types type, int depth);
// int get_id_by_name(LList* llist, char* name);
// int get_addr(LList* llist, int id);
// int llist_remove(LList* llist, int id);

#endif
