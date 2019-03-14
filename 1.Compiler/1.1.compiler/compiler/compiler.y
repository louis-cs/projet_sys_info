%{
    #include <stdio.h>

    int yylex(void);
    void yyerror(const char* error);
%}

/* Keywords */
%token tCONST tINT tMAIN tPRINTF tIF tWHILE
/* Operators */
%token tMUL tPLUS tMINUS tDIV tEQU
/* Delimiters */
%token tPARO tPARF tACCO tACCF tVIRGULE tPV
/* Others */
%token tNB tID tCOMMENT

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

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
    yyparse();
    return 0;
}
