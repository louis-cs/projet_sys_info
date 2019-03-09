%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"const"   {return tCONST;}
"int"     {return tINT;}
"main"    {printf("tMAIN"); return tMAIN;}
"printf"  {return tPRINTF;}
"("       {printf("tPARO"); return tPARO;}
")"       {printf("tPARF"); return tPARF;}
"{"       {return tACCO;}
"}"       {return tACCF;}
"*"       {return tMUL;}
"+"       {return tPLUS;}
"-"       {return tMINUS;}
"/"       {return tDIV;}
"="       {return tEQU;}
[ \t\n]+  {}
","       {return tVIRGULE;}
";"       {return tPV;}
[0-9]+    {return tNB;}
[A-Za-z][A-Za-z_0-9]* {return tID;}
[/]{2}[\t A-Za-z_0-9]*[\n] {printf("tCOMMENT : %s",yytext);}
.+  {}
