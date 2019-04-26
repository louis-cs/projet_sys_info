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
    tELSE = 263,
    tWHILE = 264,
    tMUL = 265,
    tPLUS = 266,
    tMINUS = 267,
    tDIV = 268,
    tEQU = 269,
    tCOMP = 270,
    tINF = 271,
    tSUP = 272,
    tINFE = 273,
    tSUPE = 274,
    tPARO = 275,
    tPARF = 276,
    tACCO = 277,
    tACCF = 278,
    tVIRGULE = 279,
    tPV = 280,
    tNB = 281,
    tID = 282,
    tCOMMENT = 283,
    tNO_ELSE = 284
  };
#endif
/* Tokens.  */
#define tCONST 258
#define tINT 259
#define tMAIN 260
#define tPRINTF 261
#define tIF 262
#define tELSE 263
#define tWHILE 264
#define tMUL 265
#define tPLUS 266
#define tMINUS 267
#define tDIV 268
#define tEQU 269
#define tCOMP 270
#define tINF 271
#define tSUP 272
#define tINFE 273
#define tSUPE 274
#define tPARO 275
#define tPARF 276
#define tACCO 277
#define tACCF 278
#define tVIRGULE 279
#define tPV 280
#define tNB 281
#define tID 282
#define tCOMMENT 283
#define tNO_ELSE 284

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 20 "./compiler/compiler.y" /* yacc.c:1909  */

  int entier;
  char* str;

#line 117 "./compiler/y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_COMPILER_Y_TAB_H_INCLUDED  */
