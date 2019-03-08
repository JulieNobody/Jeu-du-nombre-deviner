#!/bin/bash



read -p "va y : " i

if [ "$(echo $i | grep "^[ [:digit:] ]*$")" ] 
then 
	while [ $i -ne 10 ]
	do 
		if [ "$(echo $i | grep "^[ [:digit:] ]*$")" ] 
		then 
			if [ $i -lt 10 ]
			then
				if [ "$(echo $i | grep "^[ [:digit:] ]*$")" ] 
				then 
					read -p "c'est +, essaye encore : " i
				else
					echo "perdu !"
					echo "ce que tu as sasis n'est pas un nombre"
				fi 				
			else
				if [ "$(echo $i | grep "^[ [:digit:] ]*$")" ] 
				then 
					read -p "c'est -,essaye encore : " i
				else
					echo "perdu !"
					echo "ce que tu as sasis n'est pas un nombre"
				fi 	
			fi
		else
			echo "perdu !"
			echo "ce que tu as sasis n'est pas un nombre"
		fi 
	done

else
	echo "perdu !"
	echo "ce que tu as sasis n'est pas un nombre"
fi 







	#Test sur l'incrementation 

#i=0
#while [ $i -ne 10 ] ; do 
#  echo "ici" 
#  i=$(($i + 1))
#done

#i=0
#while [ $i -ne 10 ] ; do 
#  read -p "bla : " reponse
#  i=$(($i + $reponse))
#  echo "$i"
#done

#I=1 
#I=`expr $I + 1`  
#echo $I 
#I=`expr $I + 1`  
#echo $I 
#I=`expr $I + 1`  
#echo $I 
#I=`expr $I + 1`  
#echo $I 

	#Test sur variable numerique
#read -p "bla : " var

#if  [ $(echo $i | grep -v [a-Z] | wc -l) -gt 1 ]
#then
#	echo "ok"
#else
#	echo "non"
#fi

#if [[ "${1}" =~ ^[-+]?[0-9]+$ ]]
#then
#  echo "ok"
#else
#  echo "pas bon"
#fi

# Test si variable est numerique - OK
#if [ "$(echo $var | grep "^[ [:digit:] ]*$")" ] 
#then 
#	echo "La chaîne est numérique" 
#else
#	echo "non"
#fi 


