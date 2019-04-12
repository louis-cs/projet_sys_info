%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"const"   {printf("tCONST\n");  }
"int"     {printf("tINT\n");    }
"main"    {printf("tMAIN\n");   }
"printf"  {printf("tPRINTF\n"); }
"if"      {printf("tIF\n");     }
"while"   {printf("tWHILE\n");  }
"("       {printf("tPARO\n");   }
")"       {printf("tPARF\n");   }
"{"       {printf("tACCO\n");   }
"}"       {printf("tACCF\n");   }
"*"       {printf("tMUL\n");    }
"+"       {printf("tPLUS\n");   }
"-"       {printf("tMINUS\n");  }
"/"       {printf("tDIV\n");    }
"="       {printf("tEQU\n");    }
[ \t\n]+  {/*printf("tSEPARATOR\n");*/}
","       {printf("tVIRGULE\n");}
";"       {printf("tPV\n");     }
[0-9]+    {printf("tNB %s\n",yytext);     }
[A-Za-z][A-Za-z_0-9]*       {printf("tID %s\n",yytext);}
[/]{2}[\t A-Za-z_0-9]*[\n]  {printf("tCOMMENT : %s",yytext);}
.        {}
