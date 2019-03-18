#include "./LList.h"

LList* llist_create() {
    LList * liste = malloc(sizeof(*liste));
    if (liste == NULL) {
        printf("\x1b[1m\x1b[91mERROR : Ahhh attention, ça a échoué !\x1b[0m\n");
        return NULL;
    }
    liste->size = 0;
    liste->next_id = 0;
    return liste;
}

int add(LList* llist, char* name, char* type, int depth, Bool init, Bool cte) {
    Element* nouveau = malloc(sizeof(*nouveau));
    if (llist == NULL || nouveau == NULL) {
        return -1;
    }
    nouveau->elemId = llist->next_id;
    nouveau->addr = 0;
    nouveau->init = init;
    nouveau->constante = cte;
    nouveau->name = name;
    nouveau->type = type;
    nouveau->depth = depth;
    nouveau->suivant = llist->first;
    llist->first = nouveau;
    llist->size = llist->size + 1;
    llist->next_id = llist->next_id + 1;

    return nouveau->elemId;
}

int add_tmp(LList* llist, char* type, int depth) {
    return add(llist, "", type, depth, false, false);
}

int get_id_by_name(LList* llist, char* name) {
    if (llist == NULL || name == NULL) {
        return -1;
    }
    Element * aux = llist->first;
    Bool found = false;
    while (!found && (aux != NULL) ) {
        if (strcmp(aux->name, name) == 0) {
            found = true;
            printf("[LOG] Found !\n");
        } else {
            aux = aux->suivant;
        }
    }
    if (found) {
        return aux->elemId;
    } else {
        return -1;
    }
}

int get_addr(LList* llist, int id) {
    if (llist == NULL || id < 0) {
        return -1;
    }
    Element* aux = llist->first ;
    Bool found = false;
    while (!found && (aux != NULL) ) {
        if (aux->elemId == id) {
            found = true;
        } else {
            aux = aux->suivant;
        }
    }
    if (found) {
        return aux->addr;
    } else {
        return -1;
    }
}

int llist_remove(LList* llist, int id) {
    if (llist == NULL || id < 0) {
        printf("\x1b[1m\x1b[91mERROR : Ahhh attention, ça a échoué !\x1b[0m\n");
        return -1;
    }
    Element * prec = llist->first;
    Element * aux  = prec->suivant;
    if (prec->elemId == id) {
        llist->first = aux;
        llist->size = llist->size - 1;
        return 0;
    } else {
        if (aux == NULL) {
            return -1;
        } else {
            Bool found = false;
            while (!found && (aux != NULL) ) {
                if (aux->elemId == id) {
                    found = true;
                    prec->suivant = aux->suivant;
                    llist->size = llist->size - 1;
                } else {
                    prec = aux;
                    aux = aux->suivant;
                }
            }
            if (found) {
                return 0;
            } else {
                return -1;
            }
        }
    }
}
