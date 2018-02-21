/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     FLOAT = 258,
     INT = 259,
     FOR = 260,
     BY = 261,
     IN = 262,
     ELSE = 263,
     WHILE = 264,
     BOOLEAN = 265,
     CASE_OR = 266,
     CORGI = 267,
     CORGIRUN = 268,
     CASE = 269,
     SLFT_BRA = 270,
     SRGT_BRA = 271,
     FOR_RANGE = 272,
     ID = 273,
     VAR = 274,
     LFT_PAR = 275,
     RGT_PAR = 276,
     SEMICOLON = 277,
     EQUAL = 278,
     COM_OP = 279,
     LOG_OP = 280,
     READ = 281,
     LFT_BRA = 282,
     RGT_BRA = 283,
     COLON = 284,
     STRING = 285,
     WRITE = 286,
     FUNC = 287,
     ARROW = 288,
     RETURN = 289,
     TYPE = 290
   };
#endif
/* Tokens.  */
#define FLOAT 258
#define INT 259
#define FOR 260
#define BY 261
#define IN 262
#define ELSE 263
#define WHILE 264
#define BOOLEAN 265
#define CASE_OR 266
#define CORGI 267
#define CORGIRUN 268
#define CASE 269
#define SLFT_BRA 270
#define SRGT_BRA 271
#define FOR_RANGE 272
#define ID 273
#define VAR 274
#define LFT_PAR 275
#define RGT_PAR 276
#define SEMICOLON 277
#define EQUAL 278
#define COM_OP 279
#define LOG_OP 280
#define READ 281
#define LFT_BRA 282
#define RGT_BRA 283
#define COLON 284
#define STRING 285
#define WRITE 286
#define FUNC 287
#define ARROW 288
#define RETURN 289
#define TYPE 290




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 15 "corgi_yacc.y"
{  
    float fval;
    int ival;
    char *strval;
}
/* Line 1529 of yacc.c.  */
#line 125 "y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif

extern YYLTYPE yylloc;
