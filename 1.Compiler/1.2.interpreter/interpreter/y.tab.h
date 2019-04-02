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

#ifndef YY_YY_INTERPRETER_Y_TAB_H_INCLUDED
# define YY_YY_INTERPRETER_Y_TAB_H_INCLUDED
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
    tOP_ADD = 258,
    tOP_MUL = 259,
    tOP_SUB = 260,
    tOP_DIV = 261,
    tOP_COP = 262,
    tOP_AFC = 263,
    tOP_LOAD = 264,
    tOP_STORE = 265,
    tOP_EQU = 266,
    tOP_INF = 267,
    tOP_INFE = 268,
    tOP_SUP = 269,
    tOP_SUPE = 270,
    tOP_JMP = 271,
    tOP_JMPE = 272,
    tNB = 273
  };
#endif
/* Tokens.  */
#define tOP_ADD 258
#define tOP_MUL 259
#define tOP_SUB 260
#define tOP_DIV 261
#define tOP_COP 262
#define tOP_AFC 263
#define tOP_LOAD 264
#define tOP_STORE 265
#define tOP_EQU 266
#define tOP_INF 267
#define tOP_INFE 268
#define tOP_SUP 269
#define tOP_SUPE 270
#define tOP_JMP 271
#define tOP_JMPE 272
#define tNB 273

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 15 "./interpreter/interpreter.y" /* yacc.c:1909  */

  int entier;

#line 94 "./interpreter/y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_INTERPRETER_Y_TAB_H_INCLUDED  */
