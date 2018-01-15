{
ALGORITHME allumettes_v1
//BUT : faire un jeu de nims pour 2 joueurs
//ENTREES : le nb d'allumettes que chaques joueurs tirent
//SORTIES : quel joueur gagne
CONST : deckIni<-21;
VAR : j1,j2,looser:chaine
	deck,matches:entier

DEBUT
	deck<-deckIni
	ECRIRE "Joueur 1, ecrivez votre pseudo :"
	LIRE j1
	ECRIRE "Joueur 2, ecrivez votre pseudo :"
	LIRE j2
	looser<-j1
	REPETER
		REPETER
			ECRIRE j1&", entrez le nombre d'allumettes que vous retirez (entre 1 et 3) :"
			LIRE matches
		JUSQU'A matches>=1 ET matches<=3
		deck<-deck-matches
		SI deck>=1 ALORS
			REPETER
				ECRIRE j2&", entrez le nombre d'allumettes que vous retirez (entre 1 et 3) :"
				LIRE matches
			JUSQU'A matches>=1 ET matches<=3
			SI deck<1 ALORS
				looser<-j2
			FINSI
		FINSI
	JUSQU'A deck<1
	ECRIRE "Le perdant ayant récupéré la derniere allumette est...."&looser
FIN
}

program allumettes_v1;

uses crt;

CONST
	deckIni=21;

VAR
	j1,j2,looser:string;
	deck,matches:shortint;

BEGIN
	deck:=deckIni;

	writeln('Joueur 1, ecrivez votre pseudo :');
	readln(j1);
	writeln('Joueur 2, ecrivez votre pseudo :');
	readln(j2);
	
	looser:=j1;

	REPEAT
		BEGIN

		REPEAT
			BEGIN
			writeln(j1,', entrez le nombre d allumettes que vous retirez (entre 1 et 3) :');
			readln(matches);
			END;
		UNTIL (matches>=1) AND (matches<=3);
		deck:=deck-matches;
		IF (deck>=1) THEN
			BEGIN
				REPEAT
					BEGIN
					writeln(j2,', entrez le nombre d allumettes que vous retirez (entre 1 et 3) :');
					readln(matches);
					END;
				UNTIL (matches>=1) AND (matches<=3);
				deck:=deck-matches;
				IF (deck<1) THEN
					looser:=j2

			END;
		END;
	UNTIL (deck<1); 

	writeln('Le perdant ayant recupere la derniere allumette est....',looser);
	readln();

END.