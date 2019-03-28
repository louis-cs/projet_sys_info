%{
    #include <stdio.h>
    #include "y.tab.h"
%}
%%
"const"   { return tCONST;}
"int"     { return tINT;}
"if"      { return tIF;}
"while"   { return tWHILE;}
"main"    { return tMAIN;}
"printf"  { return tPRINTF;}
"("       { return tPARO;}
")"       { return tPARF;}
"{"       { return tACCO;}
"}"       { return tACCF;}
"*"       { return tMUL;}
"+"       { return tPLUS;}
"-"       { return tMINUS;}
"/"       { return tDIV;}
"="       { return tEQU;}
[ \t\n]+  {printf(" ");/*return tSEPARATOR;*/}
","       { return tVIRGULE;}
";"       { return tPV;}
[0-9]+    { /*printf("tNB:%d\n",atoi(yytext));*/ yylval.entier=atoi(yytext); return tNB;}
[A-Za-z][A-Za-z_0-9]* { yylval.str=strdup(yytext); /*printf("tID:%s\n",yytext);*/ return tID;}
[/]{2}[\t A-Za-z_0-9]*[\n] { printf("tCOMMENT : %s",yytext);}
.  {printf("something \n");}
