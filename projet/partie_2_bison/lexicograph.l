%{
#include "y.tab.h"
%}
%%
"const" {return tCONST;}
"int"   {return tINT;}
"main"  {return tMAIN;}
"printf" {return tPRINTF;}
"("     {return tPARO;}
")"     {return tPARF;}
"{"     {return tACCO;}
"}"     {return tACCF;}
"*"     {return tMUL;}
"+"     {return tPLUS;}
"-"     {return tMINUS;}
"/"     {return tDIV;}
"="     {return tEQU;}
[ \t\n]+ {}
","     {return tVIRGULE;}
";"     {return tPV;}
[0-9]+  {return tNB;}
[A-Za-z][A-Za-z_0-9]* {return tID;}
.+  {}
