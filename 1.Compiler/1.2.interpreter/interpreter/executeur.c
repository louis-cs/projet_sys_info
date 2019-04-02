#include <stdio.h>
#include "./lib/LList_asm.h"

#define nb_registres 4
#define taille_memoire 1024

/* Tableau des instructions assembleur */
extern LList_asm* table_asm;

/* Tableau des registres */
int registres[nb_registres];

/* Memoire */
int memoire[taille_memoire];

int simulate_execution() {
  if (table_asm == NULL){
    printf("\x1b[1m\x1b[91mERROR : table asm vide!\x1b[0m\n");
    return -1;
  }
  Element_asm* aux = table_asm->first;
  while (aux != NULL) {
    switch (aux->op_code) {
      case AFC:
      registres[aux->Ri] = aux->Rj; break;
      case LOAD:
      registres[aux->Ri] = memoire[aux->Rj]; break;
      case STORE:
      memoire[aux->Ri] = registres[aux->Rj]; break;
      case COP:
      registres[aux->Ri] = registres[aux->Rj]; break;
      case ADD:
      registres[aux->Ri] = registres[aux->Rj] + registres[aux->Rk]; break;
      case MUL:
      registres[aux->Ri] = registres[aux->Rj] * registres[aux->Rk]; break;
      case SOU:
      registres[aux->Ri] = registres[aux->Rj] - registres[aux->Rk]; break;
      case DIV:
      registres[aux->Ri] = registres[aux->Rj] / registres[aux->Rk]; break;
      case EQU:
      if (registres[aux->Rj] == registres[aux->Rk]) {
        registres[aux->Ri] = 1;
      } else {
        registres[aux->Ri] = 0;
      }
      break;
      case INF:
      if (registres[aux->Rj] < registres[aux->Rk]) {
        registres[aux->Ri] = 1;
      } else {
        registres[aux->Ri] = 0;
      }
      break;
      case INFE:
      if (registres[aux->Rj] <= registres[aux->Rk]) {
        registres[aux->Ri] = 1;
      } else {
        registres[aux->Ri] = 0;
      }
      break;
      case SUP:
      if (registres[aux->Rj] > registres[aux->Rk]) {
        registres[aux->Ri] = 1;
      } else {
        registres[aux->Ri] = 0;
      }
      break;
      if (registres[aux->Rj] >= registres[aux->Rk]) {
        registres[aux->Ri] = 1;
      } else {
        registres[aux->Ri] = 0;
      }
      break;
      default: printf("%d JUMPx R%d R%d R%d\n",aux->elemId,aux->Ri, aux->Rj, aux->Rk);
    }
    aux = aux->suivant;
  }

}
