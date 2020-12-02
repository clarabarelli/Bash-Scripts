#!/bin/bash
# Este script es una prueba de lo que me dijo 
# EL ayudante acerca del ejercicio 25 de la practica

usuarios=( grep "*adm" /etc/group | cut -d: -f4 | tr , " " )

echo " ${usuarios[*]}"
exit

