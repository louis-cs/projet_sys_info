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
%token tPARO tPARF tACCO tACCF tVIRGULE tPV tSEPARATOR
/* Others */
%token tNB tID tCOMMENT

%start entry_point;

%%

entry_point           : Functions;

Functions             : Function Functions | Function;
Function              : Type tID tPARO Args tPARF Body;

Body                  : tACCO Instructions tACCF;
Args                  : VarDec tVIRGULE Args | VarDec;
Type                  : tINT;

Instructions          : Instruction Instructions | Instruction;
Instruction           : VarDef | VarDec | VarAff; /* | If | While;*/

/*VarDefs               : VarDef VarDefs | VarDef;*/
VarDef                : Type tID tEQU tNB tPV;
VarDec                : tID tEQU tNB tPV;
VarAff                : Type tID tPV;
/*
If                    : ;
While                 : ;
*/
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
    yyparse();
    return 0;
}
