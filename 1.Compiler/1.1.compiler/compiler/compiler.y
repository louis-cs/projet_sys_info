%{
    #include <stdio.h>
    #include "./LList.h"

    /* Définition de la table des symboles */
    LList * ts;
    int currentdepth;
    Types currenttype;

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
Declaration           : Type ListDecs tPV | Constante;
ListDecs              : ListDec tVIRGULE ListDecs | ListDec;
ListDec               : tID {add(ts, $1, currenttype, currentdepth, false, false);}
                      | tID {add(ts, $1, currenttype, currentdepth, true, false);} tEQU Exp;

Constante             : tCONST Type ListConstDecs tPV;
ListConstDecs         : ListConstDec tVIRGULE ListConstDecs | ListConstDec;
ListConstDec          : tID {add(ts, $1, currenttype, currentdepth, true, false);} tEQU Exp;


Affectation           : Type tID tEQU Exp tPV;

Instructions          : Instruction Instructions | Instruction;
Instruction           : Affectation | Print;
Print                 : tPRINTF tPARO tID tPARF tPV;

ListIDs               : tID | tID tVIRGULE ListIDs;
Args                  : Arg tVIRGULE Args | Arg;
Arg                   : Type ListIDs;

Type                  : tINT {currenttype=TypeInt;};

Exp                   : Exp tPLUS Exp
                      | Exp tMINUS Exp
                      | Exp tDIV Exp
                      | Exp tMUL Exp
                      | tNB
                      | tID
                      ;
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
    ts = llist_create();
    yyparse();
    return 0;
}
