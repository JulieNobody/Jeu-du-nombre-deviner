#!/bin/bash

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
read -p "bla : " var

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


if [ "$(echo $var | grep "^[ [:digit:] ]*$")" ] 
then 
	echo "La chaîne est numérique" 
else
	echo "non"
fi 


