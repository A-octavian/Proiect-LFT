%option case-insensitive
%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
 #include "y.tab.h"
 void yyerror(char* s);
 
int yylex();
%} 


%%

"salut"		{return SALUT;}
"cum te numesti ?" {return INTREBARE1; }
"data de astazi" {return DATA1; }
"ziua in care ne aflam" {return DATA2; }
"in ce data suntem" {return DATA3; }
"nu stiu"			{return NUSTIU;}
"in ce an s-a nascut " 	{return INCEANSANASCUT;}
"ce crezi despre "	{return CEPAREREAIDESPRE;}
" derivat"			{return DERIVAT;}
"mod"				{return MODULO;}
"cativa jucatori celebri din " {return CATIVAJUCATORI;}
"as vrea sa imi spui "    {return ASVREA;}
"simona halep ?"	{return HALEP;}
"erling braut haaland ?" {return HAALAND;}
"haaland?"				{return HAALAND;}
"haaland ?"				{return HAALAND;}
"gheorghe hagi ?"			{return HAGI;}
"hagi?"			{return HAGI;}
"hagi ?"			{return HAGI;}
"simona halep?"	{return HALEP;}
"halep?"	{return HALEP;}
"halep ?"	{return HALEP;}
"erling braut haaland?" {return HAALAND;}
"gheorghe hagi?"			{return HAGI;}
"spune-mi o ghicitoare" {return GHICITOARE;}
"podul ?"			{return RASPUNS1;}
"podul?"			{return RASPUNS1;}
"podul"			{return RASPUNS1;}
"varsta ?"			{return RASPUNS2;}
"varsta?"			{return RASPUNS2;}
"varsta"			{return RASPUNS2;}
"maine ?"			{return RASPUNS3;}
"maine?"			{return RASPUNS3;}
"maine"			{return RASPUNS3;}
"linistea ?"			{return RASPUNS4;}
"linistea?"			{return RASPUNS4;}
"linistea"			{return RASPUNS4;}
"viitorul ?"			{return RASPUNS5;}
"viitorul?"			{return RASPUNS5;}
"viitorul"			{return RASPUNS5;}
"cristiano ronaldo?"        {return CR7;}
"cristiano ronaldo ?"        {return CR7;}
"lionel messi ?"        {return LM10;}
"lionel messi?"        {return LM10;}
"diego maradona?"    {return DM10;}
"diego maradona ?"    {return DM10;}
"in ce an s-a nascut "     {return INCEANSANASCUT;}
"ce parere ai despre " {return CEPAREREAIDESPRE;}
"ai auzit de "         {return CEPAREREAIDESPRE;}
"ai auzit despre "    {return CEPAREREAIDESPRE;}


[*+-/x^]				{return yytext[0];}
[0-9]+					{
						 yylval.ivalue = atoi(yytext);
						 return INTEGER;
						}
[a-zA-Z?]*				{
						 yylval.svalue = strdup(yytext);
						 return IDENTIFIER;
						}
[ \t]					; // Ignore whitespace.
.		                { printf("Alta intrebare!\n"); }


%%

int yywrap(void){
	
return 1;
}