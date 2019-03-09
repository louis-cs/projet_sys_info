%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token tCONST tINT tMAIN tPRINTF tPARO tPARF tACCO tACCF tMUL tPLUS tMINUS tDIV tEQU tVIRGULE tPV tNB tID tCOMMENT

%%
%start entry_point;
entry_point : tMAIN tPARF tPARO;
%%
