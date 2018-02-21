#! /bin/bash
yacc -d corgi_yacc.y
lex corgi_lex.l
gcc lex.yy.c y.tab.c -o lex_yacc
