#!/bin/bash
#Esta es una modificacion del punto 12 inciso a)
#Para que el script reciba los numeros como parametros
#Y verifica que 2 parametros hayan sido enviados para funcionar


#Luego imprime la multiplicacion, suma, resta y cual es el mayor
#De los leidos


comparar()
{
        if [ $1 -gt $2 ]; then

                echo "$1"
                return
        fi
        echo "$2"
        return
}



if [ $# -eq 2 ]; then

echo "La suma es:"
expr $1 + $2
echo "La resta es:"
expr $1 - $2
echo "La multiplicacion es:"
expr $1 \* $2
echo "El mayor de ambos es:"
comparar $1 $2
exit

fi
echo "No se han pasado dos valores"
exit 1

echo ""



B
B
A
A
A
B
B
B
B
B
B
A
A
A
A
A
A
A
A
A
A
A
A

