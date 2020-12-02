#!/bin/bash 
# Este script agrega todos los archivos de home terminados en .doc a un
# arreglo.
# Implementa las funciones:
# verArchivo que recibe como parametro el nombre
# de un archivo y lo imprime en pantalla si es que existe.
# cantidadArchivos que imprime la cant de archivos en el arreglo
# borrarArchivo el cual consulta al usuario si quiere borrar el archivo
# recibido como parametro: si el user dice SI lo borra solo del arreglo
# Y si dice NO, lo borra del archivo y tmb del arreglo


verArchivo() {
	if [ $# -ne 1 ]; then
		echo "Debe ingresar el nombre de archivo que busca"
		return 1	
	fi
	
	for f in ${arreglo[*]}; do
		if [ "$1" = "$f" ]; then
			echo "Archivo encontrado: $( cat $1 ) "
			return 0
		fi
	done
	echo "Archivo no encontrado"
	return 5
}


cantidadArchivos() {
	cant=$( find *.doc | wc -w )
	echo "Cantidad de archivos con terminacion .doc en /home: $cant "
	return
}

borrarArchivo() {
	if [ $# -ne 1 ]; then
		echo "Debe ingresar el nombre del archivo a borrar"
		return 1
	fi
	
	encontrado=0 
	i=0

	echo "Desea borrar el archivo?"
	select option in Si No 
	do
		case $option in
			"Si")
		while [ $i -lt ${#arreglo[*]} && !$encontrado ]; do
			if [ "${arreglo[$i]}" = "$1" ]; then
				echo "Encontrado"
				encontrado=1
				unset arreglo[$i]
				arreglo=( ${arreglo[*]} )
				break 2	
			fi
			let i++
		done
		;;
		"No")
	 	 while [ $i -lt ${#arreglo[*]} && !$encontrado ]; do
                        if [ "${arreglo[$i]}" = "$1" ]; then
                                echo "Encontrado 2"
                                encontrado=1
                                unset arreglo[$i]
                                arreglo=( ${arreglo[*]} )
                                rmdir $1 
                       		break 2 
			fi
                        let i++
                done
                ;;
		esac
	done

	if [ ! $encontrado ]; then
		echo "Archivo no encontrado"
		return 10
	fi
}


export arreglo=( $(find *.doc ) )


verArchivo ej.doc
cantidadArchivos
borrarArchivo ej.doc
verArchivo ej.doc

exit
