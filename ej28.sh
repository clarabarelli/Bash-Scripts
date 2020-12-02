#!/bin/bash
#Este script recibe un directorio, valida si existe (de no hacerlo
# informa codigo de error 4)
# SI existe cuenta los archivos para los cuales el usuario tiene permisos
# De lectura y escritura y los informa

readPermissions=0
writePermissions=0

if [ -d $1 ]; then
	cd $1 
	for f in $(ls); do
		if [ -r $f ]; then #Si tiene permisos de lectura
			let readPermissions++
		fi 
		if [ -w $f ]; then #SI tiene permisos de escritura
			let writePermissions++
		fi 
	done
	echo "La cantidad de archivos con permiso de lectura son: $readPermissions"
	echo "La cantidad de archivos con permiso de escritura son: $writePermissions"  
else
	echo "El directorio no existe"
	exit 4
fi
exit 0

	
