%{
    #include <stdio.h>
    #include "y.tab.h"
    #define  LOG 0  // Set log to 1 to print matched tokens
%}
%%
"ADD"     { if(LOG){ECHO;}return tOP_ADD;}
"MUL"     { if(LOG){ECHO;}return tOP_MUL;}
"SUB"     { if(LOG){ECHO;}return tOP_SUB;}
"DIV"     { if(LOG){ECHO;}return tOP_DIV;}
"COP"     { if(LOG){ECHO;}return tOP_COP;}
"AFC"     { if(LOG){ECHO;}return tOP_AFC;}
"LOAD"    { if(LOG){ECHO;}return tOP_LOAD;}
"STORE"   { if(LOG){ECHO;}return tOP_STORE;}
"EQU"     { if(LOG){ECHO;}return tOP_EQU;}
"INF"     { if(LOG){ECHO;}return tOP_INF;}
"INFE"    { if(LOG){ECHO;}return tOP_INFE;}
"SUP"     { if(LOG){ECHO;}return tOP_SUP;}
"SUPE"    { if(LOG){ECHO;}return tOP_SUPE;}
"JMP"     { if(LOG){ECHO;}return tOP_JMP;}
"JMPC"    { if(LOG){ECHO;}return tOP_JMPC;}
[ \t\n]+  { if(LOG){printf("%s", yytext);}}
[0-9]+    { if(LOG){ECHO;}/*printf("tNB:%d\n",atoi(yytext));*/ yylval.entier=atoi(yytext); return tNB;}
.  {printf("something \"%s\"\n", yytext);}
