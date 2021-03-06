/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_COMPILER_Y_TAB_H_INCLUDED
# define YY_YY_COMPILER_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    tCONST = 258,
    tINT = 259,
    tMAIN = 260,
    tPRINTF = 261,
    tIF = 262,
    tWHILE = 263,
    tRETURN = 264,
    tMUL = 265,
    tPLUS = 266,
    tMINUS = 267,
    tDIV = 268,
    tEQU = 269,
    tPARO = 270,
    tPARF = 271,
    tACCO = 272,
    tACCF = 273,
    tVIRGULE = 274,
    tPV = 275,
    tNB = 276,
    tID = 277,
    tCOMMENT = 278
  };
#endif
/* Tokens.  */
#define tCONST 258
#define tINT 259
#define tMAIN 260
#define tPRINTF 261
#define tIF 262
#define tWHILE 263
#define tRETURN 264
#define tMUL 265
#define tPLUS 266
#define tMINUS 267
#define tDIV 268
#define tEQU 269
#define tPARO 270
#define tPARF 271
#define tACCO 272
#define tACCF 273
#define tVIRGULE 274
#define tPV 275
#define tNB 276
#define tID 277
#define tCOMMENT 278

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 20 "./compiler/compiler.y" /* yacc.c:1909  */

  int entier;
  char* str;

#line 105 "./compiler/y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_COMPILER_Y_TAB_H_INCLUDED  */
