{Algorithmes : Allumettesv1}

//BUT : creer le jeu de nim pour deux joueur
//ENTREES : le nombre d'allumette  retirer par chacque joueur 
//SORTIES : Le gagnant et le perdant 

{
CONST 
DEPART = 21 
GAGNE = 1

VAR 

joueur1 : CHAINE DE CARACTERE 
joueur2 : CHAINE DE CARACTERE

nbretire1 : ENTIER
nbretire2 : ENTIER
nbrestant : ENTIER 

DEBUT 

	nbrestant <- DEPART  //21
	
	ECRIRE "Bonjour vous allez jouez au jeu de nim" 

	REPETER 

			 ECRIRE "Combien d'allumette voulez vous retirer " //3
			 LIRE nbretire1   //3

			 	SI ( nbretire1 < 4 ) ET ( nbretire1 > 0 ) ALORS   //3 donc ceci est bien inferieure a 4 et superieure a 0 donc cette etape est correct

			 	nbrestant <- nbrestant - nbretire1  // nbrestant devient nbrestant - 3 cela donne 18

			 SINON 
			 	SI nbrestant = GAGNE ALORS  // si nbrestant = gagne donc 1 alors il a gagner vue que nbrestant superieure a 1 alors la partie continue 

			 	ECRIRE "VOUS AVEZ GAGNER "

			 	FINSI 

	JUSQUA nbrestant <= GAGNE 

FIN

}

Program Allumettesv1 ;
uses crt ;

CONST 
DEPART : INTEGER = 21 ;
GAGNE : INTEGER = 1 ;

VAR 


nbretire1 : INTEGER ;
nbrestant : INTEGER  ;

Begin 

	clrscr ;

	nbrestant := DEPART ;

	
	writeln ('Bonjour vous allez jouez au jeu de nim') ;

	REPEAT 

			 writeln ('Combien d''allumette voulez vous retirer ') ; //2
			 readln (nbretire1)  ;

			 IF ( nbretire1 < 4 ) AND ( nbretire1 > 0 ) THEN 
			 Begin
				 nbrestant := (nbrestant - nbretire1) ;   // nbrestant - 2
				 writeln ('il reste ', nbrestant,' allumette') ;
			 end
			 ELSE IF  (nbrestant = GAGNE )THEN 

			 writeln ('VOUS AVEZ GAGNER ') ;


	UNTIL nbrestant <= GAGNE  ;

	readln ;
   END.
