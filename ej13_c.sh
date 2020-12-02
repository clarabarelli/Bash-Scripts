#!/bin/bash
# Este script recibe como parametro el nombre de un archivo,
# Informa si el mismo existe y, de hacerlo, indica si
# se trata de un directorio o un archivo

# Si no existe crea un directorio con el nombre recibido como parametro

if [ $# -ne 1 ]; then
	echo "Debe ingresar un nombre de archivo"
	exit 1
fi 

if [ -d $1 ]; then
	echo "El archivo $1 existe y es un directorio"
	exit
else	
	if [ -f $1 ]; then 
		echo "El archivo $1  existe y es un archivo(fichero)"
		exit
	else
		echo "El archivo no existe, se ha creado un directorio con su nombre"
		mkdir $1

	fi
fi
exit 
 


