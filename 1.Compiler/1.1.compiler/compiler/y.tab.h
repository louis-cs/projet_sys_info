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
    tMUL = 264,
    tPLUS = 265,
    tMINUS = 266,
    tDIV = 267,
    tEQU = 268,
    tPARO = 269,
    tPARF = 270,
    tACCO = 271,
    tACCF = 272,
    tVIRGULE = 273,
    tPV = 274,
    tNB = 275,
    tID = 276,
    tCOMMENT = 277
  };
#endif
/* Tokens.  */
#define tCONST 258
#define tINT 259
#define tMAIN 260
#define tPRINTF 261
#define tIF 262
#define tWHILE 263
#define tMUL 264
#define tPLUS 265
#define tMINUS 266
#define tDIV 267
#define tEQU 268
#define tPARO 269
#define tPARF 270
#define tACCO 271
#define tACCF 272
#define tVIRGULE 273
#define tPV 274
#define tNB 275
#define tID 276
#define tCOMMENT 277

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 19 "./compiler/compiler.y" /* yacc.c:1909  */

  int entier;
  char* str;

#line 103 "./compiler/y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_COMPILER_Y_TAB_H_INCLUDED  */
