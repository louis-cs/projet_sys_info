#include "./LList_asm.h"

const char* tableIns[] = {"NOP", "ADD", "MUL", "SUB", "DIV", "COP", "AFC", "LOAD", "STORE", "EQU", "INF", "INFE", "SUP", "SUPE", "JMP", "JMPC", "PRI", NULL };

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

// Fonctions pour afficher la liste d'instructions en assembleur ou au format hexadécimal
void print_element(Element_asm* aux) {
    if (aux != NULL) {
        if (aux->suivant != NULL) {
            print_element(aux->suivant);
        }
        switch (aux->op_code) {
            case COP:
            case AFC:
            case LOAD:
            case STORE:
            case JMPC:
            printf("%-5s %-3d %-3d\n",tableIns[aux->op_code],aux->Ri, aux->Rj);
            break;
            case JMP:
            case PRI:
            printf("%-5s %-3d\n",tableIns[aux->op_code],aux->Ri);
            break;
            default:
            printf("%-5s %-3d %-3d %-3d\n",tableIns[aux->op_code],aux->Ri, aux->Rj, aux->Rk);
        }
    }
}

void print_element_hex(Element_asm* aux) {
    if (aux != NULL) {
        if (aux->suivant != NULL) {
            print_element_hex(aux->suivant);
        }
        switch (aux->op_code) {
            case COP:
            case AFC:
            case LOAD:
            case STORE:
            case JMPC:
            printf("%02hhX%02hhX%02hhX%02hhX\n",aux->op_code,aux->Ri,aux->Rj,0);
            break;
            case JMP:
            case PRI:
            printf("%02hhX%02hhX%02hhX%02hhX\n",aux->op_code,aux->Ri,0,0);
            break;
            default:
            printf("%02hhX%02hhX%02hhX%02hhX\n",aux->op_code,aux->Ri, aux->Rj, aux->Rk);
        }
    }
}

int print_asm(LList_asm* list) {
    if (list == NULL) {
        printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
        return -1;
    }
    printf("Taille de la liste: %d\n",list->size);
    print_element(list->first);
    // Element_asm * aux = list->first;
    // while (aux != NULL) {
    //   switch (aux->op_code) {
    //     case COP: printf("%d %s R%d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
    //     break;
    //     case AFC:
    //     case LOAD:
    //     printf("%d %s R%d %d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
    //     break;
    //     case STORE:
    //     case JMPC:
    //     printf("%d %s %d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj);
    //     break;
    //     case JMP: printf("%d %s %d\n",aux->elemId,tableIns[aux->op_code],aux->Ri); break;
    //     default: printf("%d %s R%d R%d R%d\n",aux->elemId,tableIns[aux->op_code],aux->Ri, aux->Rj, aux->Rk);
    //   }
    //   aux = aux->suivant;
    // }
    return 0;
}

int print_hex(LList_asm* list) {
    if (list == NULL) {
        printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
        return -1;
    }
    printf("Taille de la liste: %d\n",list->size);
    print_element_hex(list->first);
    return 0;
}

// Fonctions pour enregistrer dans un fichier la liste d'instructions en assembleur ou au format hexadécimal ou binaire
void write_element_asm(FILE * fp, Element_asm* aux) {
  if (aux != NULL) {
    if (aux->suivant != NULL) {
      write_element_asm(fp, aux->suivant);
    }
    switch (aux->op_code) {
      case COP:
      case AFC:
      case LOAD:
      case STORE:
      case JMPC:
      fprintf(fp,"%-5s %-3d %-3d\n", tableIns[aux->op_code], aux->Ri, aux->Rj);
      break;
      case JMP:
      case PRI:
      fprintf(fp,"%-5s %-3d\n", tableIns[aux->op_code], aux->Ri);
      break;
      default:
      fprintf(fp,"%-5s %-3d %-3d %-3d\n", tableIns[aux->op_code], aux->Ri, aux->Rj, aux->Rk);
    }
  }
}

void write_element_hex(FILE * fp, Element_asm* aux) {
  if (aux != NULL) {
    if (aux->suivant != NULL) {
      write_element_hex(fp, aux->suivant);
    }
    switch (aux->op_code) {
      case COP:
      case AFC:
      case LOAD:
      case STORE:
      case JMPC:
      fprintf(fp,"%02hhX%02hhX%02hhX%02hhX\n", aux->op_code, aux->Ri, aux->Rj, 0);
      break;
      case JMP:
      case PRI:
      fprintf(fp,"%02hhX%02hhX%02hhX%02hhX\n", aux->op_code, aux->Ri, 0, 0);
      break;
      default:
      fprintf(fp,"%02hhX%02hhX%02hhX%02hhX\n", aux->op_code, aux->Ri, aux->Rj, aux->Rk);
    }
  }
}

int bin_fprintf(FILE * fp, int n) {
    while (n) {
        if (n & 1) fprintf(fp, "%s", "1");
        else fprintf(fp, "%s", "0");
        n >>= 1;
    }
}

void write_element_bin(FILE * fp, Element_asm* aux) {
  if (aux != NULL) {
    if (aux->suivant != NULL) {
      write_element_bin(fp, aux->suivant);
    }
    switch (aux->op_code) {
      case COP:
      case AFC:
      case LOAD:
      case STORE:
      case JMPC:
          bin_fprintf(fp, aux->op_code);
          bin_fprintf(fp, aux->Ri);
          bin_fprintf(fp, aux->Rj);
          break;
      case JMP:
      case PRI:
          bin_fprintf(fp, aux->op_code);
          bin_fprintf(fp, aux->Ri);
          break;
      default:
          bin_fprintf(fp, aux->op_code);
          bin_fprintf(fp, aux->Ri);
          bin_fprintf(fp, aux->Rj);
          bin_fprintf(fp, aux->Rk);
    }
  }
}

int file_asm_write(char * fname, LList_asm * llist_asm) {
    if (llist_asm == NULL) {
        printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
        return -1;
    }
    FILE * fp = fopen (fname, "w+");

    write_element_asm(fp,llist_asm->first);

    fclose(fp);
    return 0;
}

int file_hex_write(char * fname, LList_asm * llist_asm) {

    if (llist_asm == NULL) {
        printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
        return -1;
    }
    FILE * fp = fopen (fname, "w+");

    write_element_hex(fp,llist_asm->first);

    fclose(fp);
    return 0;
}

int file_bin_write(char * fname, LList_asm * llist_asm) {
    if (llist_asm == NULL) {
        printf("\x1b[1m\x1b[91mERROR : LList_asm vide! \x1b[0m\n");
        return -1;
    }

    FILE * fp = fopen (fname, "w+");

    write_element_bin(fp,llist_asm->first);

    fclose(fp);
    return 0;
}
