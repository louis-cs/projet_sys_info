%{
    #include <stdio.h>
    #include "y.tab.h"
    #define  LOG 0  // Set log to 1 to print matched tokens
%}
%%
"const"   { if(LOG){ECHO;}return tCONST;}
"int"     { if(LOG){ECHO;}return tINT;}
"if"      { if(LOG){ECHO;}return tIF;}
"while"   { if(LOG){ECHO;}return tWHILE;}
"main"    { if(LOG){ECHO;}return tMAIN;}
"printf"  { if(LOG){ECHO;}return tPRINTF;}
"("       { if(LOG){ECHO;}return tPARO;}
")"       { if(LOG){ECHO;}return tPARF;}
"{"       { if(LOG){ECHO;}return tACCO;}
"}"       { if(LOG){ECHO;}return tACCF;}
"*"       { if(LOG){ECHO;}return tMUL;}
"+"       { if(LOG){ECHO;}return tPLUS;}
"-"       { if(LOG){ECHO;}return tMINUS;}
"/"       { if(LOG){ECHO;}return tDIV;}
"="       { if(LOG){ECHO;}return tEQU;}
[ \t\n]+  { if(LOG){printf(" ");}}
","       { if(LOG){ECHO;}return tVIRGULE;}
";"       { if(LOG){ECHO;}return tPV;}
[0-9]+    { if(LOG){ECHO;}/*printf("tNB:%d\n",atoi(yytext));*/ yylval.entier=atoi(yytext); return tNB;}
[A-Za-z][A-Za-z_0-9]* { if(LOG){ECHO;}yylval.str=strdup(yytext); /*printf("tID:%s\n",yytext);*/ return tID;}
[/]{2}[\t A-Za-z_0-9]*[\n] { if(LOG){printf("tCOMMENT : %s",yytext);}}
.  {printf("something \n");}
