%{
    int yylex(void);
    void yyerror(char *);
%}

%token tCONST tINT tMAIN tPRINTF tPARO tPARF tACCO tACCF tMUL tPLUS tMINUS tDIV tEQU tVIRGULE tPV tNB tID

%%
start : tMAIN;
%%
