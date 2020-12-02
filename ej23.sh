# !/bin/bash
# Este script recorre un arreglo de numeros y:
# Imprime los numeros pares 
# Cuenta los impares

num=(1 2 3 4 5 6 7)
contador=0

for((i=0;i<${#num[*]};i++)) 
do
	resul=$(expr ${num[$i]} % 2)
	if [ $resul -eq 0 ]; then
		echo "${num[$i]}"
	else 
		let contador++
	fi
done

echo "La cantidad de numeros impares es: $contador "
exit 0

 
