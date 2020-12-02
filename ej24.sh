#!/bin/bash
# Dados dos vectores del mismo tamano, este script
# Suma los elementos de cada posicion en ambos vectores e imprime
# EL resultado

#Declaracion de vectores
vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )

echo "vector1 = ${vector1[*]}"
echo "vector2 = ${vector2[*]}"


for((i=0;i<${#vector1[*]};i++))
do
	suma=$( expr ${vector1[$i]} + ${vector2[$i]} )
	echo "La suma en la posicion $i de ambos vectores es: $suma"
done

exit 0 
