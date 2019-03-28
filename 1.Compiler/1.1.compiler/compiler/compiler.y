%{
    #include <stdio.h>
    #include "./LList.h"
    #include "./LList_asm.h"

    /* Définition de la table des symboles */
    LList * ts;
    LList_asm * tins;
    int currentdepth;
    Types currenttype;

    int yylex(void);
    void yyerror(const char* error);
%}

%define parse.error verbose /* pour récupérer des détails sur les erreurs avec yacc -v ./compiler/compiler.y */

/* Définition des types pour l'association avec LEX */
%union {
  int entier;
  char* str;
}
%type <entier> tNB Exp
%type <str> tID

/* Keywords */
%token tCONST tINT tMAIN tPRINTF tIF tWHILE
/* Operators */
%token tMUL tPLUS tMINUS tDIV tEQU
/* Delimiters */
%token tPARO tPARF tACCO tACCF tVIRGULE tPV
/* Others */
%token tNB tID tCOMMENT

/* Priorité des opérateurs pour l'arithmétique (priorité croissante) */
%left tPLUS tMINUS
%left tDIV tMUL


%start entry_point;

%%
entry_point           : MainFunction;
MainFunction          : Type tMAIN tPARO Args tPARF Body
                      | Type tMAIN tPARO tPARF Body;

Body                  : tACCO {currentdepth++;} InBody tACCF {currentdepth--;};

InBody                : Declarations Instructions
                      | Declarations
                      | Instructions;

Declarations          : Declaration Declarations | Declaration;
Declaration           : Type ListDecs tPV | Constante;
ListDecs              : ListDec tVIRGULE ListDecs | ListDec;
ListDec               : tID tEQU Exp {printf("tid %s = %d",$1,$3); int index = add(ts, $1, currenttype, currentdepth, true, false); ins_add(tins,"AFC",0,$3,0); ins_add(tins,"STORE",get_addr(ts,index),0,0);}
                      | tID {add(ts, $1, currenttype, currentdepth, false, false);};

Constante             : tCONST Type ListConstDecs tPV;
ListConstDecs         : ListConstDec tVIRGULE ListConstDecs | ListConstDec;
ListConstDec          : tID {add(ts, $1, currenttype, currentdepth, true, true);} tEQU Exp;

Affectation           : Type tID tEQU Exp tPV;

Instructions          : Instruction Instructions | Instruction;
Instruction           : Affectation | Print;
Print                 : tPRINTF tPARO tID tPARF tPV;

ListIDs               : tID tVIRGULE ListIDs | tID;
Args                  : Arg tVIRGULE Args | Arg;
Arg                   : Type ListIDs;

Type                  : tINT {currenttype = TypeInt;};

Exp                   : Exp tPLUS Exp
                      | Exp tMINUS Exp
                      | Exp tDIV Exp
                      | Exp tMUL Exp
                      | tNB {int index_var_tmp = add_tmp(ts,TypeInt,currentdepth); $$ = index_var_tmp;}
                      | tID {int index_var_tmp = add_tmp(ts,currenttype,currentdepth); $$ = index_var_tmp;};
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
  currentdepth = 0;
  currenttype = TypeInt;
  ts = llist_create();
  yyparse();
  llist_print(ts);
  return 0;
}
