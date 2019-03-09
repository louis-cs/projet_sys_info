%%
"const"   {printf("tCONST\n");}
"int"     {printf("tINT\n");}
"main"    {printf("tMAIN\n");}
"printf"  {printf("tPRINTF\n");}
"("       {printf("tPARO\n");}
")"       {printf("tPARF\n");}
"{"       {printf("tACCO\n");}
"}"       {printf("tACCF\n");}
"*"       {printf("tMUL\n");}
"+"       {printf("tPLUS\n");}
"-"       {printf("tMINUS\n");}
"/"       {printf("tDIV\n");}
"="       {printf("tEQU\n");}
[ \t\n]+  {}
","       {printf("tVIRGULE\n");}
";"       {printf("tPV\n");}
[0-9]+    {printf("tNB\n");}
[A-Za-z][A-Za-z_0-9]* {printf("tID %s\n", yytext);}
.+  {printf("ERROR : %s\n", yytext);}
