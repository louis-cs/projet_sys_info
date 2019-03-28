#ifndef LLIST_ASM_H
#define LLIST_ASM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Structure de la liste chainée pour la table des symboles */
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
};

/* Fonctions pour la liste chainée */
LList_asm* llist_asm_create();
int ins_add(LList_asm* list, char* op, int Rx, int Ry, int Rz);

// int add_tmp(LList* llist, Types type, int depth);
// int get_id_by_name(LList* llist, char* name);
// int get_addr(LList* llist, int id);
// int llist_remove(LList* llist, int id);

#endif
