#ifndef LLIST_H
#define LLIST_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Structure de la liste chainée pour la table des symboles */
typedef struct Element Element;
typedef struct LList LList;
typedef enum Bool Bool;
enum Bool { false = 0, true = 1};

struct Element {
  int elemId;
  int addr;
  Bool init;
  Bool constante;
  char* name;
  char* type;
  int depth;
  Element* suivant;
};

struct LList {
  Element* first;
  int size;
  int next_id;
};

/* Fonctions pour la liste chainée */
LList* llist_create();
int add(LList* llist, char* name, char* type, int depth, Bool init, Bool cte);
int add_tmp(LList* llist, char* type, int depth);
int get_id_by_name(LList* llist, char* name);
int get_addr(LList* llist, int id);
int llist_remove(LList* llist, int id);

#endif
