%{
#include<stdio.h>
#include<math.h>

#define YYERROR_VERBOSE 1

int yylex();
void yyerror(const char *s);

extern FILE *yyin;
extern int yylineno;
%}

%union
{  
    float fval;
    int ival;
    char *strval;
}

%locations
%error-verbose

// Tokens 
%token <fval> FLOAT;
%token <ival> INT;
%token FOR;
%token BY;
%token IN;
%token ELSE;
%token WHILE;
%token BOOLEAN;
%token CASE_OR;
%token CORGI;
%token CORGIRUN;
%token CASE;
%token SLFT_BRA;
%token SRGT_BRA;
%token FOR_RANGE;
%token <strval> ID;
%token VAR;
%token LFT_PAR;
%token RGT_PAR;
%token SEMICOLON;
%token EQUAL;
%token COM_OP;
%token LOG_OP;
%token READ;
%token LFT_BRA;
%token RGT_BRA;
%token COLON;
%token STRING;
%token WRITE;
%token FUNC;
%token ARROW;
%token RETURN;
%token <strval> TYPE;
%token LOW_OP;
%token GRT_OP;
%token NOT_EQ;
%token LOW_EQ;
%token GRT_EQ;
%token EQ_EQ;
%token AND_OP;
%token OR_OP;




%%

program:
CORGI ID SEMICOLON vars functions corgirun
;

functions:
function functions
| /*epsilon*/
;

function:
FUNC ID LFT_PAR ID COLON tipo parameters RGT_PAR ARROW tipo bloque
;

parameters:
',' ID COLON tipo parameters
| /*epsilon*/
;

vars:
var vars
| /*epsilon*/
;

var:
VAR ID COLON tipo SEMICOLON
;

corgirun:
CORGIRUN LFT_PAR RGT_PAR bloque
;

constante:
INT
| FLOAT
| id
| STRING
| BOOLEAN
;

bloque:
LFT_BRA vars estatutos return RGT_BRA
;

estatutos:
estatuto estatutos
| /*epsilon*/
;

estatuto:
asignacion
| condicion
| loop
| write
| read
;

id:
ID index
;

index:
SLFT_BRA INT SRGT_BRA
| /*epsilon*/
;

asignacion:
id EQUAL asignation SEMICOLON
;

asignation:
SLFT_BRA constante asignations SRGT_BRA 
| expresion;
;

asignations:
',' constante asignations
| /*epsilon*/
;

write:
WRITE LFT_PAR expresion writeAux RGT_PAR SEMICOLON
;

writeAux:
',' expresion writeAux
| /*epsilon*/
;

read: 
READ LFT_PAR id RGT_PAR SEMICOLON
;

condicion:
CASE LFT_BRA expresion COLON estatuto conditionAux RGT_BRA
;

conditionAux:
 CASE_OR condicion2
| /*epsilon*/
;

condicion2:
expresion COLON estatuto conditionAux
| conditionElse

conditionElse:
 ELSE COLON estatuto
| /*epsilon*/
;

loop:
FOR ID IN INT FOR_RANGE INT BY INT LFT_BRA estatutos RGT_BRA
| WHILE LFT_PAR expresion RGT_PAR LFT_BRA estatutos RGT_BRA
;

return: 
RETURN exp SEMICOLON
;
// TODO EXPRESION SUBDIVISION
expresion:
expresion1  

expresion1:
exp expresion2
;

expresion2:
COM_OP exp
| /*epsilon*/
;

exp:
termino exp2
;

exp2:
'+' exp
| '-' exp
| /*epsilon*/
;

termino:
factor termino2
;

termino2:
'*' termino
| '/' termino
| '%' termino
| '^' termino
| /*epsilon*/
;

factor:
LFT_PAR expresion RGT_PAR
| '+' constante
| '-' constante
| constante
;

tipo:
TYPE tipoAux
;

tipoAux:
SLFT_BRA INT SRGT_BRA
| /*epsilon*/
;

%%

void yyerror(const char *s)
{
	fprintf(stdout, "Error: %s/n in line %d", s, yylineno);
}

int main(int argc, char **argv)
{
	yyin = fopen(argv[1], "r");
	yyparse();
	return 0;
}
