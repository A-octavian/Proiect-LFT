%{

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <time.h>

void yyerror(char* s);

int yylex();
int nrIntrebare=1;
int nrGhicitoare = 1;
int ghicitoare = 0;

%}

%union {

	int ivalue;
	char* svalue;
}

%token SALUT
%token INTREBARE1
%token DATA1
%token DATA2
%token DATA3
%token ASVREA
%token INCEANSANASCUT
%token CEPAREREAIDESPRE
%token <ivalue> INTEGER
%token DERIVAT
%token LAMINMULTIT
%token CATEVORASE
%token <svalue> IDENTIFIER
%token MODULO;
%token QUESTION
%token ANSWER
%token EOL
%token RASPUNS1
%token RASPUNS2
%token RASPUNS3
%token RASPUNS4
%token RASPUNS5
%token GHICITOARE
%token HAALAND
%token HAGI 
%token HALEP
%token CATIVAJUCATORI
%token NUSTIU
%token CR7
%token LM10
%token DM10

%%


program: /*empty */
	    assignment
	    | program assignment
	    | numeParticipant
	    | program numeParticipant
	    | intrebareData
	    | program intrebareData
	    | questiInCeAn
	    | program questiInCeAn
	    | questionPeople
	    | program questionPeople
	    | mathCalculator
	    | program mathCalculator
	    | derivare
	    | program derivare
 		| intrebareJucatori
        | program intrebareJucatori
		| statement
		| program statement
		| raspuns 
		| program raspuns
		| nus 
		| program nus
        ;
        

assignment: SALUT { nrIntrebare=0; printf(">>Vă salut și vă invit să facem cunoștință într-un mod adecvat. Aș dori să vă întreb, cu respect, cum vă numiți?");}
	   	| INTREBARE1 {printf(">>Salutare! Sunt BOT Haaland. În ce fel te pot sprijini astăzi?");}
;

numeParticipant: IDENTIFIER {
    char* x = $1;

    if (nrIntrebare == 0) {
        
        char s1[256];
        snprintf(s1, sizeof(s1), ">>Salutare, %s! Sunt BOT Haaland. În ce fel te pot sprijini astăzi?", x);
        printf("%s", s1);
        nrIntrebare++;
    }	 
	else
		if(ghicitoare == 1){
			printf(">>Mai incearca !");
		}
	 else {printf(">>Imi pare rau. Nu inteleg intrebarea !\n");}
    
}
;

intrebareData: DATA1 {getTodaysDate();}
                | DATA2 {getTodaysDate();}
                | DATA3 {getTodaysDate();}
                | ASVREA DATA1 {getTodaysDate();}
                | ASVREA DATA2 {getTodaysDate();}
                | ASVREA DATA3 {getTodaysDate();}
				;

questiInCeAn:     INCEANSANASCUT HAALAND{printf(">>Erling Braut Håland s-a nascut in 21 iulie 2000.");}
                | INCEANSANASCUT HAGI{printf(">>Gheorghe Hagi s-a nascut in 5 februarie 1965.");}
                | INCEANSANASCUT HALEP{printf(">>Simona Halep s-a nascut in 27 septembrie 1991.");}
                | INCEANSANASCUT CR7{printf(">>Cristiano Ronaldo s-a nascut in 5 februarie 1985.");}
                | INCEANSANASCUT DM10{printf(">>Diego Maradona s-a nascut in 30 octombrie 1960.");}
                | INCEANSANASCUT LM10{printf(">>Lionel Messi s-a nascut in 24 iunie 1987.");}
                | INCEANSANASCUT IDENTIFIER {
                        char* x = $2;
                        char s1[256];
                        snprintf(s1, sizeof(s1),">>Nu stiu in ce an s-a nascut %s",x);
                        printf("%s", s1);
                    }
            		;

questionPeople: CEPAREREAIDESPRE HAALAND{printf(">>Erling Braut Haaland este un fotbalist norvegian care joacă pe postul de atacant la echipa din Premier League, Manchester City. De asemenea, Haaland este internațional cu echipa națională de fotbal a Norvegiei.");}
				| CEPAREREAIDESPRE HALEP{printf(">>Simona Halep este o jucătoare de tenis din România care a atins prima poziție în clasamentul mondial WTA, în două rânduri, între 2017 și 2019. A ocupat această poziție timp de 64 de săptămâni, fiind din acest punct de vedere a zecea din istoria tenisului în clasamentul longevității ca lider al circuitului.");}
				| CEPAREREAIDESPRE HAGI{printf(">>Gheorghe Hagi este un fost fotbalist român, considerat unul dintre cei mai buni mijlocași ofensivi în Europa anilor '80 și '90 și cel mai mare fotbalist român din toate timpurile. Fanii lui Galatasaray l-au numit Comandante și românii l-au numit Regele.");}
				| CEPAREREAIDESPRE CR7{printf(">>Cristiano Ronaldo dos Santos Aveiro este un fotbalist portughez, care evoluează pe postul de atacant și este căpitan al naționalei Portugaliei. Ronaldo este considerat unul din cei mai buni fotbaliști din toate timpurile.");}
				| CEPAREREAIDESPRE LM10{printf(">>Lionel Andrés Messi Cuccittini este un fotbalist argentinian care joacă pe post de atacant sau mijlocaș la Paris Saint-Germain și la echipa națională a Argentinei. Messi a evoluat la FC Barcelona în Primera División timp de 17 ani, între anii 2004 si 2021.");}
				| CEPAREREAIDESPRE DM10{printf(">>Diego Armando Maradona a fost un fotbalist și antrenor argentinian. A fost considerat de către mulți din lumea fotbalului ca fiind cel mai mare fotbalist al tuturor timpurilor, împărțind cu Pelé titlul de Jucătorul Secolului decernat de FIFA");}
				| CEPAREREAIDESPRE IDENTIFIER{
					char* x = $2;
					char s1[256];
                    snprintf(s1, sizeof(s1),">>Nu am auzit nimic despre %s dar presupun ca este o persoana fenomenala",x);
					removeChar(s1,'?');
                    printf("%s", s1);
				}
				;

statement:
    GHICITOARE{
		switch(nrGhicitoare){
		case 1:
			printf(">>Ce trece peste apă și nu face valuri?"); 
			ghicitoare = 1;
			break;
		case 2:
			printf(">>Ce urcă în sus, dar nu poate coborî niciodată?");
			ghicitoare = 1;
			break;
		case 3:
			printf(">>Ce este mereu înainte, dar niciodată nu ajunge la destinație?");
			ghicitoare = 1;
			break;
		case 4:
			printf(">>Ce dispare atunci când îi spui numele?");
			ghicitoare = 1;
			break;
		case 5:
			printf(">>Ce este mereu în spatele tău, dar nu poți să-l vezi niciodată?");
			ghicitoare = 1;
			break;
		}
	}
	;

raspuns: 
	RASPUNS1{
		if(nrGhicitoare == 1){
			printf(">>Raspuns corect !");
			ghicitoare = 0;
			nrGhicitoare = 2;
		}
		else printf(">>Mai incearca !");
	}
	| RASPUNS2{
		if(nrGhicitoare == 2){
			printf(">>Raspuns corect !");
			ghicitoare = 0;
			nrGhicitoare = 3;
		}
		else printf(">>Mai incearca !");
	}
	| RASPUNS3{
		if(nrGhicitoare == 3){
			printf(">>Raspuns corect !");
			ghicitoare = 0;
			nrGhicitoare = 4;
		}
		else printf(">>Mai incearca !");
	}
	| RASPUNS4{
		if(nrGhicitoare == 4){
			printf(">>Raspuns corect !");
			ghicitoare = 0;
			nrGhicitoare = 5;
		}
		else printf(">>Mai incearca !");
	}
	| RASPUNS5{
		if(nrGhicitoare == 5){
			printf(">>Raspuns corect !");
			ghicitoare = 0;
			nrGhicitoare = 1;
		}
		else printf(">>Mai incearca !");
	}
	;

nus: NUSTIU{
		if( ghicitoare == 1){
			raspunsGhicitoare();
		}
		else printf("");
		}
		;

mathCalculator:INTEGER '+' INTEGER {printf(">>Raspunsul adunarii este : %d",($1+$3));}
			| INTEGER '-' INTEGER {printf(">>Raspunsul scaderii este: %d",($1-$3));}
			| INTEGER '*' INTEGER {printf(">>Raspunsul inmultirii este: %d",($1*$3));}
			| INTEGER '/' INTEGER {printf(">>Raspunsul inpartirii este: %d",($1/$3));}
			| INTEGER MODULO INTEGER {printf(">>Raspunsul operatiei modulo este: %d", ($1 % $3));} 
			;

derivare: INTEGER 'x' '^' INTEGER DERIVAT {
			if(($4 != 2) && ($4 != 1)){
		 	printf("%dx^%d", ($1*$4), ($4-1));
			}

			if($4 == 2){
				printf("%dx",($1*2));

			}
			else if ($4 == 1)
				{
					printf("%d",$1);
				}	
		}		
		;

				
intrebareJucatori: ASVREA CATIVAJUCATORI IDENTIFIER {
                    char* x = $3;
                    jucatoriTari(x);
                }
				| CATIVAJUCATORI IDENTIFIER{
                    char* x = $2;
                    jucatoriTari(x);
                }
                ;



%%

void raspunsGhicitoare(){
	switch(nrGhicitoare){
		case 1:
			printf(">>Raspunsul era podul."); 
			ghicitoare = 0;
			nrGhicitoare = 2;
			break;
		case 2:
			printf(">>Raspunsul era varsta.");
			ghicitoare = 0;
			nrGhicitoare = 3;
			break;
		case 3:
			printf(">>Raspunsul era maine.");
			ghicitoare = 0;
			nrGhicitoare = 4;
			break;
		case 4:
			printf(">>Raspunsul era linistea.");
			ghicitoare = 0;
			nrGhicitoare = 5;
			break;
		case 5:
			printf(">>Raspunsul era viitorul.");
			ghicitoare = 0;
			nrGhicitoare = 1;
			break;
		}
}

void jucatoriTari(char* tara){
    int nrTari = 0;

    if(strcmp(tara,"Romania") == 0){
        printf(">>Gheorghe Hagi, Adrian Mutu");
        nrTari++;
    }

    if(strcmp(tara,"Franta") == 0){
        printf(">>Zinedine Zidane, Thierry Henry");
        nrTari++;
    }

    if(strcmp(tara,"Anglia") == 0){
        printf(">>Frank Lampard, David Beckham");
        nrTari++;
    }

    if(strcmp(tara,"Brazilia") == 0){
        printf(">>Pelé, Neymar");
        nrTari++;
    }

    if(strcmp(tara,"Argentina") == 0){
        printf(">>Lionel Messi, Diego Maradona");
        nrTari++;
    }

    if(strcmp(tara,"Portugalia") == 0){
        printf(">>Cristiano Ronaldo, Luís Figo");
        nrTari++;
    }

    if(nrTari == 0){
        printf(">>Nu cunosc jucatori din %s", tara);
    }

}

void removeChar(char *str, char garbage) {
    char *src, *dst;
    for (src = dst = str; *src != '\0'; src++) {
        *dst = *src;
        if (*dst != garbage) dst++;
    }
    *dst = '\0';
}

void getTodaysDate()
{
    time_t currentTime;
    struct tm *localTime;
    char dateString[100];

    currentTime = time(NULL);

    localTime = localtime(&currentTime);

    strftime(dateString, sizeof(dateString), "%d-%m-%Y", localTime);

    printf(">>Data de astazi este: %s\n", dateString);
}

int main(void){
	return yyparse();
}

void yyerror(char* s){
	fprintf(stderr, "%s\n",s);
}