#include <stdio.h>
#include "./lib/LList_asm.h"

#define NB_REGISTERS 4
#define MEMORY_SIZE  1024

/* Tableau des instructions assembleur */
extern LList_asm* table_asm;

/* Tableau des registres */
int registers[NB_REGISTERS];

/* Memoire */
int memory[MEMORY_SIZE];


void registers_state(){
    int k = 0;
    printf("===================== BEGIN REGISTER DUMP =========================\n");
    for (k=0; k<NB_REGISTERS; k++) {printf("  - R%d : %d", k, registers[k]);}
    printf("=====================  END  REGISTER DUMP =========================\n");
}

void register_state(int register_index){
    printf("===================== BEGIN REGISTER DUMP =========================\n");
    printf("  - R%d : %d", register_index, registers[register_index]);
    printf("=====================  END  REGISTER DUMP =========================\n");
}



int simulate_execution() {
  if (table_asm == NULL){
    printf("\x1b[1m[\x1b[91mwarn\x1b[0m\x1b[1m] Empty ASM table !\x1b[0m\n");
    return -1;
  }
  Element_asm* aux = table_asm->first;
  while (aux != NULL) {
    switch (aux->op_code) {
      case AFC:
          registers[aux->Ri] = aux->Rj; break;
      case LOAD:
          registers[aux->Ri] = memory[aux->Rj]; break;
      case STORE:
          memory[aux->Ri] = registers[aux->Rj]; break;
      case COP:
          registers[aux->Ri] = registers[aux->Rj]; break;
      case ADD:
          registers[aux->Ri] = registers[aux->Rj] + registers[aux->Rk]; break;
      case MUL:
          registers[aux->Ri] = registers[aux->Rj] * registers[aux->Rk]; break;
      case SUB:
          registers[aux->Ri] = registers[aux->Rj] - registers[aux->Rk]; break;
      case DIV:
          registers[aux->Ri] = registers[aux->Rj] / registers[aux->Rk]; break;
      case EQU:
          if (registers[aux->Rj] == registers[aux->Rk]) {
            registers[aux->Ri] = 1;
          } else {
            registers[aux->Ri] = 0;
          }
          break;
      case INF:
          if (registers[aux->Rj] < registers[aux->Rk]) {
            registers[aux->Ri] = 1;
          } else {
            registers[aux->Ri] = 0;
          }
          break;
      case INFE:
          if (registers[aux->Rj] <= registers[aux->Rk]) {
            registers[aux->Ri] = 1;
          } else {
            registers[aux->Ri] = 0;
          }
          break;
      case SUP:
          if (registers[aux->Rj] > registers[aux->Rk]) {
            registers[aux->Ri] = 1;
          } else {
            registers[aux->Ri] = 0;
          }
          break;
          if (registers[aux->Rj] >= registers[aux->Rk]) {
            registers[aux->Ri] = 1;
          } else {
            registers[aux->Ri] = 0;
          }
          break;
      case PRI:
          printf("%d", registers[aux->Ri]);
      default:
          printf("%d JUMPx R%d R%d R%d\n",aux->elemId,aux->Ri, aux->Rj, aux->Rk);
    }
    aux = aux->suivant;
    registers_state();
  }
}
