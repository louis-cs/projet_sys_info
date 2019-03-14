%{
    #include <stdio.h>
    #include <stdlib.h>

    /* Structure de la liste chainée pour la table des symboles */
    typedef struct Element Element;
    typedef struct LList LList;
    struct Element
    {
      int elemId;
      int addr;
      int init;
      int constante;
      char* name;
      char* type;
      int depth;
      Element* suivant;
    };
    struct LList
    {
      Element* first;
      int size;
      int next_id;
    };

    /* Fonctions pour la liste chainée */
    LList* create_llist();
    int add(LList* llist, char* name, char* type, int depth);
    int add_tmp(LList* llist, char* type, int depth);
    int get_id_by_name(LList* llist, char* name);
    int get_addr(LList* llist, int id);
    void remove(LList* llist, int id);

    /* Définition de la table des symboles */
    LList ts;

    int yylex(void);
    void yyerror(const char* error);
%}

/* Définition des types pour l'association avec LEX */
%union {
  int entier;
  char* str;
}
%type <entier> tNB
%type <str> tID

/* Keywords */
%token tCONST tINT tMAIN tPRINTF tIF tWHILE
/* Operators */
%token tMUL tPLUS tMINUS tDIV tEQU
/* Delimiters */
%token tPARO tPARF tACCO tACCF tVIRGULE tPV
/* Others */
%token tNB tID tCOMMENT

/* Priorité des opérateurs pour l'arithmétique */
%left tPLUS tMINUS
%left tDIV tMUL


%start entry_point;

%%
entry_point           : MainFunction;
MainFunction          : Type tMAIN tPARO Args tPARF Body;

Body                  : tACCO Declarations Instructions tACCF | tACCO Instructions tACCF | tACCO Declarations tACCF;

Declarations          : Declaration Declarations | Declaration;
Declaration           : Type ListDecs tPV;
ListDecs              : ListDec tVIRGULE ListDecs | ListDec;
ListDec               : tID | tID tEQU Exp;

/* Constante             : ; */

Affectation           : Type tID tEQU Exp tPV;

Instructions          : Instruction Instructions | Instruction;
Instruction           : Affectation | Print;
Print                 : tPRINTF tPARO tID tPARF tPV;

ListIDs               : tID | tID tVIRGULE ListIDs;
Args                  : Arg tVIRGULE Args | Arg;
Arg                   : Type ListIDs;

Type                  : tINT;

Exp                   : Exp tPLUS Exp
                      | Exp tMINUS Exp
                      | Exp tDIV Exp
                      | Exp tMUL Exp
                      | tNB
                      | tID
                      ;
%%

LList* create_llist() {
  LList liste = malloc(sizeof(*liste));

  if (liste == NULL )
  {
    exit(EXIT_FAILURE);
  }
  liste->size = 0;
  liste->next_id = 0;
  return liste;
}

int add(LList* llist, char* name, char* type, int depth, int init, int cte) {
  Element *nouveau = malloc(sizeof(*nouveau));
  if (llist == NULL || nouveau == NULL)
  {
    exit(EXIT_FAILURE);
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

int add_tmp(LList* llist, char* type, int depth);
int get_id_by_name(LList* llist, char* name);
int get_addr(LList* llist, int id);
void remove(LList* llist, int id);

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
    yyparse();
    return 0;
}
