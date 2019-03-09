%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token tCONST
%token tINT
%token tMAIN
%token tPRINTF
%token tPARO
%token tPARF
%token tACCO
%token tACCF
%token tMUL
%token tPLUS
%token tMINUS
%token tDIV
%token tEQU
%token tVIRGULE
%token tPV
%token tNB
%token tID
%token tCOMMENT

%%
%start entry_point;
entry_point : tMAIN tPARF tPARO;
%%
