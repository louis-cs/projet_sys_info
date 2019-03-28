#include "./LList.h"

char * logmsg = "";

int main(int argc, char const *argv[]) {
    printf("[LOG] Creating LList\n");
    LList * mylist = llist_create();

    int id_lina = add(mylist, "Lina", TypeInt, 17, false, false);
    printf("[LOG] ID nouvel element : %d\n", id_lina);
    int id_remi = add(mylist, "Remi", TypeInt, -1, false, true);
    printf("[LOG] ID nouvel element : %d\n", id_remi);
    int id_erik = add(mylist, "Erik", TypeInt, 0, true, false);
    printf("[LOG] ID nouvel element : %d\n", id_erik);
    int id_pp   = add(mylist, "PetitPalmier", TypeInt, 17, true, true);
    printf("[LOG] ID nouvel element : %d\n", id_pp);

    id_erik = get_id_by_name(mylist, "Quelqu'un");
    printf("[LOG] ID de l'element Erik : %d\n", id_erik);

    printf("[LOG] Taille de la LList : %d\n", mylist->size);

    llist_print(mylist);

    printf("[LOG] Removing Erik :\n");
    llist_remove(mylist, id_erik);
    printf("[LOG] Taille de la LList : %d\n", mylist->size);
    return 0;
}
