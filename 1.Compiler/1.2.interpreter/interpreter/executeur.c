#include <stdio.h>
#include "./lib/LList_asm.h"
#include "./executeur.h"

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
  for (k=0; k<NB_REGISTERS; k++) {printf("  - R%d : %d\n", k, registers[k]);}
  printf("=====================  END  REGISTER DUMP =========================\n");
}

void registers_states(int instruction_index){
  int k = 0;
  printf("===================== BEGIN REGISTER DUMP %d =========================\n", instruction_index);
  for (k=0; k<NB_REGISTERS; k++) {printf("  - R%d : %d\n", k, registers[k]);}
  printf("=====================  END  REGISTER DUMP %d =========================\n", instruction_index);
}

void register_state(int register_index){
  printf("===================== BEGIN REGISTER DUMP =========================\n");
  printf("  - R%d : %d\n", register_index, registers[register_index]);
  printf("=====================  END  REGISTER DUMP =========================\n");
}

int simulate_execution() {
  if (table_asm == NULL){
    printf("\x1b[1m[\x1b[91mwarn\x1b[0m\x1b[1m] Empty ASM table !\x1b[0m\n");
    return -1;
  }
  Element_asm* aux = table_asm->first;
  Element_asm* bis;
  int go_next;
  while (aux != NULL) {
    go_next = 1;
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
      case SUPE:
      if (registers[aux->Rj] >= registers[aux->Rk]) {
        registers[aux->Ri] = 1;
      } else {
        registers[aux->Ri] = 0;
      }
      break;
      case JMPC:
      if (registers[aux->Rj] == 0) {
        int next_ins = aux->Ri;
        bis = table_asm->first;
        while ((bis != NULL) && (bis->elemId != next_ins)) {
          bis = bis->suivant;
        }
        if (bis == NULL) {
          printf("\x1b[1m[\x1b[91mwarn\x1b[0m\x1b[1m] JMPC : address not found !\x1b[0m\n");
          return -1;
        }
        aux = bis;
        go_next = 0;
      }
      break;
      case PRI:
      printf("%d \n", memory[aux->Ri]);
      break;
      default:
      printf("DEFAULT : %d R%d R%d R%d\n",aux->elemId,aux->Ri, aux->Rj, aux->Rk);
    }
    if (go_next != 0) {
      aux = aux->suivant;
    }
    registers_states(aux->elemId);
  }
}
