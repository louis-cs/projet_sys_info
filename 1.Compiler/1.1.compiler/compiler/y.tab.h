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
    tPARO = 262,
    tPARF = 263,
    tACCO = 264,
    tACCF = 265,
    tMUL = 266,
    tPLUS = 267,
    tMINUS = 268,
    tDIV = 269,
    tEQU = 270,
    tVIRGULE = 271,
    tPV = 272,
    tNB = 273,
    tID = 274,
    tCOMMENT = 275
  };
#endif
/* Tokens.  */
#define tCONST 258
#define tINT 259
#define tMAIN 260
#define tPRINTF 261
#define tPARO 262
#define tPARF 263
#define tACCO 264
#define tACCF 265
#define tMUL 266
#define tPLUS 267
#define tMINUS 268
#define tDIV 269
#define tEQU 270
#define tVIRGULE 271
#define tPV 272
#define tNB 273
#define tID 274
#define tCOMMENT 275

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_COMPILER_Y_TAB_H_INCLUDED  */
