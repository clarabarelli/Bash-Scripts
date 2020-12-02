#!/bin/bash
# Este script recibe rutas absolutas como parametros
# Para aquellas en las posiciones impares informa si existe
# En caso de hacerlo, indica si se trata de un archi o directorio
# Tambien cuenta el total de archivos inexistentes


if [ $# -eq 0 ]; then
	echo "Debe ingresar al menos un parametro que indique una ruta"
	exit 1
fi

cont=0

# Iteracion por parametros
for ((i=1; i<=$#; i+=2)); do
	archivo=${!i}
	if [ -e $archivo ]; then #Verifica si existe el archivo
		if [ -d $archivo ]; then
			echo "$archivo es un directorio"
		elif [ -f $archivo ]; then
			echo "$archivo es un archivo"
		fi
	else
		echo	"$archivo no existe"
		let cont++
	fi
done
echo "Hubo $cont archivos inexistentes"

exit 0
