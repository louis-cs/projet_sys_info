%{
    #include <stdio.h>
    #include "./lib/LList.h"
    #include "./lib/LList_asm.h"

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

/* Operators */
%token tOP_ADD tOP_MUL tOP_SUB tOP_DIV tOP_COP
%token tOP_AFC tOP_LOAD tOP_STORE tOP_EQU tOP_INF
%token tOP_INFE tOP_SUP tOP_SUPE tOP_JMP tOP_JMPE

%start entry_point;

%%
entry_point    : OPs;

OPs            : OP | OP OPs;
OP             : tADD
               | tMUL
               | tSUB
               | tDIV
               | tCOP
               | tAFC
               | tLOAD
               | tSTORE
               | tEQU
               | tINF
               | tINFE
               | tSUP
               | tSUPE
               | tJMP
               | tJMPE
               ;

tADD           : tOP_ADD   tNB tNB tNB {};
tMUL           : tOP_MUL   tNB tNB tNB {};
tSUB           : tOP_SUB   tNB tNB tNB {};
tDIV           : tOP_DIV   tNB tNB tNB {};
tCOP           : tOP_COP   tNB tNB     {};
tAFC           : tOP_AFC   tNB tNB     {};
tLOAD          : tOP_LOAD  tNB tNB     {};
tSTORE         : tOP_STORE tNB tNB     {};
tEQU           : tOP_EQU   tNB tNB tNB {};
tINF           : tOP_INF   tNB tNB tNB {};
tINFE          : tOP_INFE  tNB tNB tNB {};
tSUP           : tOP_SUP   tNB tNB tNB {};
tSUPE          : tOP_SUPE  tNB tNB tNB {};
tJMP           : tOP_JMP   tNB         {};
tJMPE          : tOP_JMPE  tNB tNB     {};
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
  currentdepth = 0;
  currenttype = TypeInt;
  ts = llist_create();
  tins = llist_asm_create();
  yyparse();
  llist_print(ts);
  print_asm(tins);
  return 0;
}
