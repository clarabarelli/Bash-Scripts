#!/bin/bash 
# Este script hace que el usuario seleccione entre 3 
# opciones: Listar, DondeEstoy y QuienEsta.
# Si elige listar lista el contenido del direc actual.
# SI elige DOndeEStoy muestra el direc donde esta ubicado
# SI elige QUienESta muestra los usuarios conectados

select opcion in Listar DondeEstoy QuienEsta
do 
case $opcion in
	"Listar")
		ls 
	;;
	"DondeEstoy")
		pwd
	;;
	"QuienEsta")
		w
	;;
	esac
done
exit

