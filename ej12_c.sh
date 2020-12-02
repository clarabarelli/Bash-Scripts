#!/bin/bash
#Este es el ejercicio 12 inciso c)
#El cual recibe dos numeros y una operacion como parametros
#Y devuelve el resultado

multiplicacion() {

echo "$1 * $2 = "
expr $1 \* $2
return
}

if [ $# -eq 3 ]; then
	if [ "$2" = "*" ]; then
		multiplicacion $1 $3
		exit
	else
		echo "$1 $2 $3 ="	
		expr $1 $2 $3
		exit
	fi
fi
echo "La cantidad de parametros no es correcta, usted ingreso $# parametros"
exit 1	
	

	
	
