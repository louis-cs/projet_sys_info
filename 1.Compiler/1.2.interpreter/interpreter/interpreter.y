%{
    #include <stdio.h>
    #include "./lib/LList_asm.h"
    #include "./executeur.h"

    /* Définition de la table des instructions */
    LList_asm* table_asm;

    int yylex(void);
    void yyerror(const char* error);
%}

%define parse.error verbose /* pour récupérer des détails sur les erreurs avec yacc -v ./compiler/compiler.y */

/* Définition des types pour l'association avec LEX */
%union {
  int entier;
}
%type <entier> tNB

/* Operators */
%token tOP_ADD tOP_MUL tOP_SUB tOP_DIV tOP_COP
%token tOP_AFC tOP_LOAD tOP_STORE tOP_EQU tOP_INF
%token tOP_INFE tOP_SUP tOP_SUPE tOP_JMP tOP_JMPC
%token tOP_PRI
%token tNB

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
               | tJMPC
               | tPRI
               ;

tADD           : tOP_ADD   tNB tNB tNB {ins_add(table_asm, ADD,   $2, $3, $4); };
tMUL           : tOP_MUL   tNB tNB tNB {ins_add(table_asm, MUL,   $2, $3, $4); };
tSUB           : tOP_SUB   tNB tNB tNB {ins_add(table_asm, SUB,   $2, $3, $4); };
tDIV           : tOP_DIV   tNB tNB tNB {ins_add(table_asm, DIV,   $2, $3, $4); };
tCOP           : tOP_COP   tNB tNB     {ins_add(table_asm, COP,   $2, $3, -1); };
tAFC           : tOP_AFC   tNB tNB     {ins_add(table_asm, AFC,   $2, $3, -1); };
tLOAD          : tOP_LOAD  tNB tNB     {ins_add(table_asm, LOAD,  $2, $3, -1); };
tSTORE         : tOP_STORE tNB tNB     {ins_add(table_asm, STORE, $2, $3, -1); };
tEQU           : tOP_EQU   tNB tNB tNB {ins_add(table_asm, EQU,   $2, $3, $4); };
tINF           : tOP_INF   tNB tNB tNB {ins_add(table_asm, INF,   $2, $3, $4); };
tINFE          : tOP_INFE  tNB tNB tNB {ins_add(table_asm, INFE,  $2, $3, $4); };
tSUP           : tOP_SUP   tNB tNB tNB {ins_add(table_asm, SUP,   $2, $3, $4); };
tSUPE          : tOP_SUPE  tNB tNB tNB {ins_add(table_asm, SUPE,  $2, $3, $4); };
tJMP           : tOP_JMP   tNB         {ins_add(table_asm, JMP,   $2, -1, -1); };
tJMPC          : tOP_JMPC  tNB tNB     {ins_add(table_asm, JMPC,  $2, $3, -1); };
tPRI           : tOP_PRI   tNB         {ins_add(table_asm, PRI,   $2, -1, -1); };
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
  table_asm = llist_asm_create();
  yyparse();
  print_asm(table_asm);
  simulate_execution();
  return 0;
}
