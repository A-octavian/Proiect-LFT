/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

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

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
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
    SALUT = 258,
    INTREBARE1 = 259,
    DATA1 = 260,
    DATA2 = 261,
    DATA3 = 262,
    ASVREA = 263,
    INCEANSANASCUT = 264,
    CEPAREREAIDESPRE = 265,
    INTEGER = 266,
    DERIVAT = 267,
    LAMINMULTIT = 268,
    CATEVORASE = 269,
    IDENTIFIER = 270,
    MODULO = 271,
    QUESTION = 272,
    ANSWER = 273,
    EOL = 274,
    RASPUNS1 = 275,
    RASPUNS2 = 276,
    RASPUNS3 = 277,
    RASPUNS4 = 278,
    RASPUNS5 = 279,
    GHICITOARE = 280,
    HAALAND = 281,
    HAGI = 282,
    HALEP = 283,
    CATIVAJUCATORI = 284,
    NUSTIU = 285,
    CR7 = 286,
    LM10 = 287,
    DM10 = 288
  };
#endif
/* Tokens.  */
#define SALUT 258
#define INTREBARE1 259
#define DATA1 260
#define DATA2 261
#define DATA3 262
#define ASVREA 263
#define INCEANSANASCUT 264
#define CEPAREREAIDESPRE 265
#define INTEGER 266
#define DERIVAT 267
#define LAMINMULTIT 268
#define CATEVORASE 269
#define IDENTIFIER 270
#define MODULO 271
#define QUESTION 272
#define ANSWER 273
#define EOL 274
#define RASPUNS1 275
#define RASPUNS2 276
#define RASPUNS3 277
#define RASPUNS4 278
#define RASPUNS5 279
#define GHICITOARE 280
#define HAALAND 281
#define HAGI 282
#define HALEP 283
#define CATIVAJUCATORI 284
#define NUSTIU 285
#define CR7 286
#define LM10 287
#define DM10 288

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 18 "chatbot.y"


	int ivalue;
	char* svalue;

#line 129 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
