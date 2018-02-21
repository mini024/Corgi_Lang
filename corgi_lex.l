%{
#include<stdio.h>
#include"y.tab.h"
%}
%%

[0-9]+(\.[0-9]+)   {yylval.fval=atof(yytext);   return FLOAT;}
[0-9]+ {yylval.ival=atoi(yytext);   return INT;}
for {return FOR;}
in {return IN;}
by {return BY;}
while {return WHILE;}
write {return WRITE;}
read {return READ;}
return {return RETURN;}
true|false {return BOOLEAN;}
corgi {return CORGI;}
corgiRun {return CORGIRUN;}
var {return VAR;}
func { return FUNC;}
case {return CASE;}
Int|Float|Bool|String {yylval.strval= strdup(yytext); return TYPE;}
[a-zA-Z][a-zA-Z0-9]* {yylval.strval= strdup(yytext); return ID;}
\( {return LFT_PAR;}
\) {return RGT_PAR;}
[;] {return SEMICOLON;}
: {return COLON;}
\= {return EQUAL;}
\.\.\. {return FOR_RANGE;}
\| {return CASE_OR;}
[<|>|!=|<=|>=|==] {return COM_OP;}
\&\& | \|\| {return LOG_OP;}
\{ {return LFT_BRA;}
\} {return RGT_BRA;}
\[ {return SLFT_BRA;}
\] {return SRGT_BRA;}
\-\> { return ARROW;}
[ \t]   ;
\n   {}
.   {return  yytext[0];}
\".*\" {return STRING;}

%%


int yywrap(void)
{
return 1;
}
