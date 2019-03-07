#!/bin/bash

#Boite à outil
#	$num1 - eq $num2 : vérifie si les nombres sont égaux
#	$num1 - ne $num2 : vérifie si les nombres différents
#	$num1 - lt $num2 : vérifie si num1 est inférieur à num 2 (LowerThan)
#	$num1 - gt $num2 : vérifie si num1 est supérieur à num 2 (GreaterThan)

# génération d'un nombre aléatoire entre 1 et 100
min=1
max=100
number=$[($RANDOM % ($[$max - $min] + 1)) + $min]

#variable nombre d'essai
essais=1

#affichage de la solution
echo " "
echo "     $number"
echo " "

#message accueil
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "      Bienvenue chez moi"
echo "      Je suis jeucolas"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~ Je pense actuelemment à un nombre entre 1 et 100 ~~"
echo "~~ Vous allez devoir deviner ce nombre en un minimum de tentative ~~"
echo "~~ Pour chaque tentative, je vous dirais si vous êtes trop haut ou trop bas ~~"
echo " "
echo " "
#demande de saisie pour le 1er essais
echo " ~ essai numero $essais ~ "
read -p "à vous de jouer : " reponse

#Test des variables saisies
while [ $reponse -ne $number ]
do
			if [ $reponse -lt $number ]
		then
			echo " "
			echo "trop bas"
			essais=`expr $essais + 1` 
			echo " ~ essai numero $essais ~ "
			read -p "essaye encore : " reponse
		else
			echo " "
			echo "trop haut"
			essais=`expr $essais + 1` 
			echo " ~ essai numero $essais ~ "
			read -p "essaye encore : " reponse
		fi
done

#si bonne réponse
if [ $reponse -eq $number ]
then
	echo " "
	echo "*** Félicitation ! vous avez gagné ! ***"
	echo "*** Votre score : $essais essais ***"
	echo " "
#saisie du nom du joueur
	read -p "Quel est votre nom ? " joueur
#affichage des scores
	echo "$essais essais - $joueur" >> scores.txt
	echo " "
	echo "~~~~~ Scores ~~~~~"
	sort -n scores.txt
	echo " "
fi





