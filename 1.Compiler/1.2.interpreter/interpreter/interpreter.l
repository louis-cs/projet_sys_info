%{
    #include <stdio.h>
    #include "y.tab.h"
%}
%%
"ADD"     { return tOP_ADD;}
"MUL"     { return tOP_MUL;}
"SUB"     { return tOP_SUB;}
"DIV"     { return tOP_DIV;}
"COP"     { return tOP_COP;}
"AFC"     { return tOP_AFC;}
"LOAD"    { return tOP_LOAD;}
"STORE"   { return tOP_STORE;}
"EQU"     { return tOP_EQU;}
"INF"     { return tOP_INF;}
"INFE"    { return tOP_INFE;}
"SUP"     { return tOP_SUP;}
"SUPE"    { return tOP_SUPE;}
"JMP"     { return tOP_JMP;}
"JMPE"    { return tOP_JMPE;}
[ \t\n]+  {/*printf(" ");/*return tSEPARATOR;*/}
[0-9]+    { /*printf("tNB:%d\n",atoi(yytext));*/ yylval.entier=atoi(yytext); return tNB;}
.  {printf("something \n");}
