%{
    #include <stdio.h>
    #include "./lib/LList.h"
    #include "./lib/LList_asm.h"

    /* Définition de la table des symboles */
    LList * ts;
    LList_asm * tins;

    int currentdepth;
    Types currenttype;

    int yylex(void);
    void yyerror(const char* error);
%}

%define parse.error verbose /* pour récupérer des détails sur les erreurs avec yacc -v ./compiler/compiler.y */

/* Définition des types pour l'association avec LEX */
%union {
  int entier;
  char* str;
}
%type <entier> tNB Exp tIF tWHILE tPARO
%type <str> tID

/* Keywords */
%token tCONST tINT tMAIN tPRINTF tIF tWHILE
/* Operators */
%token tMUL tPLUS tMINUS tDIV tEQU
/* Delimiters */
%token tPARO tPARF tACCO tACCF tVIRGULE tPV
/* Others */
%token tNB tID tCOMMENT

/* Priorité des opérateurs pour l'arithmétique (priorité croissante) */
%left tPLUS tMINUS
%left tDIV tMUL


%start entry_point;

%%
entry_point           : MainFunction;
MainFunction          : tMAIN tPARO Args tPARF BodyFunction
                      | tMAIN tPARO tPARF Body;

BodyFunction          : tACCO {currentdepth++;} InBody tACCF {currentdepth--;};

Body                  : tACCO {currentdepth++;} Instructions tACCF {currentdepth--;};

InBody                : Declarations Instructions
                      | Declarations
                      | Instructions;

Declarations          : Declaration Declarations | Declaration;
Declaration           : Type ListDecs tPV | Constante;
ListDecs              : ListDec tVIRGULE ListDecs | ListDec;
ListDec               : tID tEQU Exp {printf("tid %s = elemId %d\n",$1,$3);
                                      int index = add(ts, $1, currenttype, currentdepth, true, false);
                                      ins_add(tins,LOAD,0,get_addr(ts,$3),-1);
                                      ins_add(tins,STORE,get_addr(ts,index),0,-1);}
                      | tID {add(ts, $1, currenttype, currentdepth, false, false);};

Constante             : tCONST Type ListConstDecs tPV;
ListConstDecs         : ListConstDec tVIRGULE ListConstDecs | ListConstDec;
ListConstDec          : tID tEQU Exp {int index = add(ts, $1, currenttype, currentdepth, true, true);
                                      ins_add(tins,LOAD,0,get_addr(ts,$3),-1);
                                      ins_add(tins,STORE,get_addr(ts,index),0,-1);};

Affectation           : tID tEQU Exp tPV {int index = get_id_by_name(ts,$1);
                                          if (index == -1) {
                                            yyerror("Variable non déclarée");
                                          } else {
                                            printf("adresse de %s : %d \n",$1,get_addr(ts,index));
                                            printf("tid %s = elemId %d\n",$1,$3);
                                            ins_add(tins,LOAD,0,get_addr(ts,$3),-1);
                                            ins_add(tins,STORE,get_addr(ts,index),0,-1);
                                            if (!is_initialised(*get_element(ts,index))) {
                                              initialise(get_element(ts,index));
                                            }
                                          };
                                        };

Instructions          : Instruction Instructions | Instruction;
Instruction           : Affectation | Print | If | While;
Print                 : tPRINTF tPARO tID tPARF tPV;

ListIDs               : tID tVIRGULE ListIDs | tID;
Args                  : Arg tVIRGULE Args | Arg;
Arg                   : Type ListIDs;

Type                  : tINT {currenttype = TypeInt;};

Exp                   : Exp tPLUS Exp {ins_add(tins,LOAD,0,get_addr(ts,$1),-1);
                                       ins_add(tins,LOAD,1,get_addr(ts,$3),-1);
                                       ins_add(tins,ADD,2,0,1);
                                       ins_add(tins,STORE,get_addr(ts,$1),2,-1);
                                       printf("elemId %d + elemId %d\n",$1,$3);
                                       llist_remove(ts,$3);
                                       $$=$1;
                                     };
                      | Exp tMINUS Exp {ins_add(tins,LOAD,0,get_addr(ts,$1),-1);
                                        ins_add(tins,LOAD,1,get_addr(ts,$3),-1);
                                        ins_add(tins,SOU,2,0,1);
                                        ins_add(tins,STORE,get_addr(ts,$1),2,-1);
                                        printf("elemId %d - elemId %d\n",$1,$3);
                                        llist_remove(ts,$3);
                                        $$=$1;
                                      };
                      | Exp tDIV Exp {ins_add(tins,LOAD,0,get_addr(ts,$1),-1);
                                      ins_add(tins,LOAD,1,get_addr(ts,$3),-1);
                                      ins_add(tins,DIV,2,0,1);
                                      ins_add(tins,STORE,get_addr(ts,$1),2,-1);
                                      printf("elemId %d / elemId %d\n",$1,$3);
                                      llist_remove(ts,$3);
                                      $$=$1;
                                    };
                      | Exp tMUL Exp {ins_add(tins,LOAD,0,get_addr(ts,$1),-1);
                                      ins_add(tins,LOAD,1,get_addr(ts,$3),-1);
                                      ins_add(tins,MUL,2,0,1);
                                      ins_add(tins,STORE,get_addr(ts,$1),2,-1);
                                      printf("elemId %d * elemId %d\n",$1,$3);
                                      llist_remove(ts,$3);
                                      $$=$1;
                                    };
                      | tNB {int index_var_tmp = add_tmp(ts,TypeInt,currentdepth);
                             printf("tmp_var n° %d = %d\n",index_var_tmp,$1);
                             ins_add(tins,AFC,0,$1,-1);
                             ins_add(tins,STORE,get_addr(ts,index_var_tmp),0,-1);
                             $$ = index_var_tmp;}
                      | tID {int index = get_id_by_name(ts,$1);
                        if (index == -1) {
                          yyerror("Variable non déclarée");
                        } else {
                          if (!is_initialised(*get_element(ts,index))) {
                            printf("WARNING: Variable non initialisée\n");
                          }
                          int index_var_tmp = add_tmp(ts,currenttype,currentdepth);
                          printf("tmp_var n° %d <-> elemId %d\n",index_var_tmp,index);
                          ins_add(tins,LOAD,0,get_addr(ts,index),-1);
                          ins_add(tins,STORE,get_addr(ts,index_var_tmp),0,-1);
                          $$ = index_var_tmp;};
                        }

If                    : tIF tPARO Exp tPARF {
                         ins_add(tins, LOAD, 0, get_addr(ts,$3), -1);
                         int index = ins_add(tins, JMPC, 0xFFFF, 0, -1);
                         llist_remove(ts, $3);
                         $1 = index;
                        }
                        Body {ins_update_Ri(tins, $1, ins_get_next_index(tins));};

While                 : tWHILE {$1 = ins_get_next_index(tins);}
                        tPARO Exp tPARF
                        {
                         ins_add(tins, LOAD, 0, get_addr(ts,$4), -1);
                         int index = ins_add(tins, JMPC, 0xFFFF, 0, -1);
                         llist_remove(ts, $4);
                         $3 = index;
                        }
                        Body {
                            ins_add(tins, JMPC, $1, 0, -1);
                            ins_update_Ri(tins, $3, ins_get_next_index(tins));
                        };
%%

void yyerror(const char* error) {
    printf("ERROR: %s\n", error);
}

int main(int argc, char const **argv) {
  currentdepth = 0;
  currenttype = TypeInt;
  ts = llist_create();
  tins = llist_asm_create();
  yyparse();
  llist_print(ts);
  print_asm(tins);
  return 0;
}
