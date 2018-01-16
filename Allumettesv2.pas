{Algorithmes : Allumettesv2}

//BUT : creer le jeu de nim pour deux joueur
//ENTREES : le nombre d'allumette  retirer par chacque joueur
//SORTIES : Le gagnant et le perdant

{
CONST
DEPART = 21
GAGNE = 1

VAR

joueur1 : CHAINE DE CARACTERE


nbretire1 : ENTIER
nbretire2 : ENTIER
nbrestant : ENTIER

DEBUT

	nbrestant <- DEPART
	
	ECRIRE "Bonjour vous allez jouez au jeu de nim"

	ECRIRE "Veuillez ecrire le Prenom du premier joueur "  // Louis
	LIRE joueur1

	ECRIRE "Vous jouez contre un ordinateur  "

	REPETER

		 REPETER
			 ECRIRE "Combien d'allumette voulez vous retirer "& joueur1 //2
			 LIRE nbretire1

			 SI ( nbretire1 < 4 ) ET ( nbretire1 > 0 ) ALORS

			 	nbrestant <- nbrestant - nbretire1  // nbrestant - 2

			 SINON
			 	SI nbrestant = GAGNE ALORS

			 	ECRIRE "VOUS AVEZ GAGNER "

			 	FINSI
			 FINSI
		 JUSQUA ( nbretire1 < 4 ) ET ( nbretire1 > 0 )

		SI nbrestant > 1 ALORS
		 	
		 	REPETER

			 	nbretire2 <- ALEATOIRE

				 SI ( nbretire2 < 4 ) ET ( nbretire2 > 0 ) ALORS

				 	nbrestant <- nbrestant - nbretire2

				 	FINSI

				 SINON SI nbrestant = GAGNE ALORS

					 ECRIRE "VOUS AVEZ GAGNER "

			 JUSQUA ( nbretire2 < 4 ) ET ( nbretire2 > 0 )


	JUSQUA nbrestant <= GAGNE

FIN


}

Program Allumettesv2 ;
uses crt ;

CONST
DEPART : INTEGER = 21 ;
GAGNE : INTEGER = 1 ;
retiremax : INTEGER = 4 ;

VAR

joueur1 :  STRING ;


nbretire1 : INTEGER ;
nbretire2 : INTEGER ;
nbrestant : INTEGER  ;

Begin

	clrscr ;

	nbrestant := DEPART ;

	
	writeln ('Bonjour vous allez jouez au jeu de nim') ;

	writeln ('Veuillez ecrire le Prenom du premier joueur ') ; // Louis
	readln (joueur1) ;

	writeln ('Vous allez jouez contre un ordinateur') ;

	REPEAT

		 REPEAT
			 writeln ('Combien d''allumette voulez vous retirer ', joueur1) ; //2
			 readln (nbretire1)  ;

			 IF  ( nbretire1 < 4 ) AND ( nbretire1 > 0 ) THEN
			 	begin 
					 nbrestant := (nbrestant - nbretire1) ;
					 writeln ('il reste ', nbrestant,' allumette') ;   // nbrestant - 2
			 	end
			 ELSE 
			 	IF  (nbrestant = GAGNE )THEN
			 	writeln ('VOUS AVEZ GAGNER ',joueur1) ;

		 UNTIL ( nbretire1 < 4 ) AND ( nbretire1 > 0 )  ;

		 IF nbrestant > GAGNE THEN

		 REPEAT

		 	 Randomize;
			 nbretire2 := random(retiremax)  ;

			 writeln ('L''ordinateur retire ', nbretire2) ;

			 IF ( nbretire2 < 4 ) AND ( nbretire2 > 0 ) THEN
			 begin
				 nbrestant := (nbrestant - nbretire2 ) ;
				 writeln ('il reste ', nbrestant,' allumette') ;
			  end
			 ELSE IF (nbrestant = GAGNE )THEN

			 writeln('L''ordinateur a gagne') ;

		 UNTIL ( nbretire2 < 4 ) AND ( nbretire2 > 0 ) ;


	UNTIL nbrestant <= GAGNE  ;

	readln ;
END.
