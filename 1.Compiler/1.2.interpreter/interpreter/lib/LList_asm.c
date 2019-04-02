#include "./LList_asm.h"

const char* tableIns[] = {"ADD", "MUL", "SOU", "DIV", "COP", "AFC", "LOAD", "STORE", "EQU", "INF", "INFE", "SUP", "SUPE", "JMP", "JMPC", NULL };

LList_asm* llist_asm_create(){
  LList_asm* liste = malloc(sizeof(*liste));
  if (liste == NULL) {
    printf("\x1b[1m\x1b[91mERROR : malloc in llist_asm_create!\x1b[0m\n");
    return NULL;
  }
  liste->size = 0;
  liste->next_id = 0;
  return liste;
}

int ins_add(LList_asm* list, op_codes op, int Rx, int Ry, int Rz) {
  Element_asm* nouveau = malloc(sizeof(*nouveau));
  if (list == NULL || nouveau == NULL) {
    return -1;
  }
  nouveau->elemId = list->next_id;
  nouveau->op_code = op;
  nouveau->Ri = Rx;
  nouveau->Rj = Ry;
  nouveau->Rk = Rz;
  nouveau->suivant = list->first;
  list->first = nouveau;
  list->size = list->size + 1;
  list->next_id = list->next_id + 1;
  return nouveau->elemId;
}

int print_asm(LList_asm* list) {
  if (list == NULL) {
    printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
    return -1;
  }
  printf("Taille de la liste: %d\n",list->size);
  Element_asm * aux = list->first;
  while (aux != NULL) {
    switch (aux->op_code) {
      case COP: printf("%d %s R%d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
      break;
      case AFC:
      case LOAD:
      printf("%d %s R%d %d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
      break;
      case STORE:
      case JMPC:
      printf("%d %s %d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
      break;
      case JMP: printf("%d %s %d\n",aux->elemId,tableIns[aux->op_code],aux->Ri); break;
      default: printf("%d %s R%d R%d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj, aux->Rk);
    }
    aux = aux->suivant;
  }
  return 0;
}

int ins_update_Ri(LList_asm* list, int id, int Rx) {
  if (list == NULL) {
    printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
    return -1;
  }
  if (id >= list->next_id) {
    printf("\x1b[1m\x1b[91mERROR : Instruction pas dans la table! \x1b[0m\n");
    return -1;
  }
  Element_asm* aux = list->first ;
  Bool found = false;
  while (!found && (aux != NULL) ) {
    if (aux->elemId == id) {
      found = true;
    } else {
      aux = aux->suivant;
    }
  }
  if (found) {
    aux->Ri = Rx;
    return 0;
  } else {
    return -1;
  }
}

int ins_get_next_index(LList_asm* list) {
  if (list == NULL) {
    printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
    return -1;
  }
  return list->next_id;
}
