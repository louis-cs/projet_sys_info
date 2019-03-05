%%
"adore" {printf("tADORE");}
"le"    {printf("tLE");}
"PSI"   {printf("tPSI");}
[a-z]+  {printf("tPRENOM %s \n", yytext);}
.       {printf("Etat Puit => ERREUR")}
