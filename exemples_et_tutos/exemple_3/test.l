%%
[/]{2}[ A-Za-z_0-9]*[\n] {printf("tCOMMENT : %s",yytext);}
.       {printf("Etat Puit : %s\n", yytext);}
