%{ECHO;
#include <stdio.h>
#include "y.tab.h"
%}
%%
"const"   {ECHO; return tCONST;}
"int"     {ECHO; return tINT;}
"if"      {ECHO; return tIF;}
"while"   {ECHO; return tWHILE;}
"main"    {ECHO; return tMAIN;}
"printf"  {ECHO; return tPRINTF;}
"("       {ECHO; return tPARO;}
")"       {ECHO; return tPARF;}
"{"       {ECHO; return tACCO;}
"}"       {ECHO; return tACCF;}
"*"       {ECHO; return tMUL;}
"+"       {ECHO; return tPLUS;}
"-"       {ECHO; return tMINUS;}
"/"       {ECHO; return tDIV;}
"="       {ECHO; return tEQU;}
[ \t\n]+  {printf(" ");/*return tSEPARATOR;*/}
","       {ECHO; return tVIRGULE;}
";"       {ECHO; return tPV;}
[0-9]+    {ECHO; return tNB; /*tNB = atoi(yytext);*/}
[A-Za-z][A-Za-z_0-9]* {ECHO; return tID;}
[/]{2}[\t A-Za-z_0-9]*[\n] {ECHO; printf("tCOMMENT : %s",yytext);}
.+  {}
