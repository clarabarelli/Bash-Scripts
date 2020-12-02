#!/bin/bash
# Este script implementa las operaciones basicas sobre arreglos

inicializar() {
export array=()
return
}

agregar_elem() {
array[${#array[*]}]=$1
return
}

eliminar_elem() {
#Validacion de la posicion
if [ $1 -le ${#array[*]} ]; then
	unset array[$1]
	array=( ${array[*]} )
fi
return
}

longitud() {
echo "Longitud del arreglo: ${#array[*]}"
return
}

imprimir() {
echo " ${array[*]}"
return
}

inicializar_Con_Valores() {
if [ $# -eq 2 ]; then

	for((i=0;i<$1;i++)); do
		array[$i]=$2
	done
else 
	echo "Se necesitan dos parametros: longitud del arreglo y valor a asignar"
fi
return
}

#Prueba 1
inicializar
agregar_elem 1
agregar_elem 2
agregar_elem 3
agregar_elem 4
agregar_elem 5
imprimir
longitud
eliminar_elem 0
imprimir
longitud

inicializar_Con_Valores 10 1
imprimir
longitud

exit

