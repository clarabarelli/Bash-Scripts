#!/bin/bash
#Este script muestra en pantalla los numeros del 1 al 100
# Y a sus cuadrados

for ((i=1; i<=100 ;i++)) do

cuadrado=$(expr $i \* $i)
echo "Nro $i , cuadrado $cuadrado"
done

exit
