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

read -p "à vous de jouer : " reponse


while [ $reponse -ne $number ]
do
			if [ $reponse -lt $number ]
		then
			echo "trop bas"
			read -p "essaye encore : " reponse
		else
			echo "trop haut"
			read -p "essaye encore : " reponse
		fi
done

if [ $reponse -eq $number ]
then
	echo "gagné"
fi



