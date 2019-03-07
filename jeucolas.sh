#!/bin/bash

  

# génération d'un nombre aléatoire entre 1 et 100
min=1
max=100
number=$[($RANDOM % ($[$max - $min] + 1)) + $min]

echo $number

