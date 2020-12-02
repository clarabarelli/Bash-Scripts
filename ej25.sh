#!/bin/bash
# Este script agrega todos los usuarios del grupo users
# A un arreglo.
# Adicionalmente puede recibir como parametro:
# -b n: retorna el elemento de la posicion n del archivo
# -l  : retorna la longitud del arreglo
# -i  : imprime todos los elementos del arreglo

usuarios=( $( cat /etc/group | cut -d: -f1 ) )

if [ $1 = "-i" ]; then
	echo " ${usuarios[*]} "
elif [ $1 = "-l" ]; then
	echo "Longitud del arreglo: ${#usuarios[*]}"
elif [ $1 = "-b" ]; then
	echo "El elemento en la posicion $2 es ${usuarios[$2]}"
fi
exit
