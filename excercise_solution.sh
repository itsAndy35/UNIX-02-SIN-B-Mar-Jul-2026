#!/bin/bash

# define the arrays with the names and domains to evaluate
nombres=("mysite" "localhost" "servidor_falso")
dominios=("nostarch.com" "127.0.0.1" "dominio-que-no-existe.local")

# define the output csv file name
archivo_csv="ping_resultados.csv"

# throw an error and exit if the arrays are empty
if [ ${#nombres[@]} -eq 0 ] || [ ${#dominios[@]} -eq 0 ]; then
    # print error message to the terminal
    echo "Error: Los arreglos de nombres o dominios no contienen datos."
    # exit the script with error code 1
    exit 1
fi

# if the csv file does not exist, add a header row
if [ ! -f "$archivo_csv" ]; then
    # write the header columns to the csv file
    echo "Nombre,Dominio,Resultado,Fecha_Hora" > "$archivo_csv"
fi

# loop through the arrays using their indices
for i in "${!nombres[@]}"; do
    # assign the current name from the array to a variable
    nombre="${nombres[$i]}"
    # assign the current domain from the array to a variable
    dominio="${dominios[$i]}"
    
    # get the current date and time format
    fecha_hora=$(date "+%Y-%m-%d %H:%M:%S")

    # ping the domain sending only 1 packet (-c 1)
    # redirect both standard output and standard error to /dev/null to hide them
    if ping -c 1 "$dominio" > /dev/null 2>&1; then
        # if ping is successful, set result to success
        resultado="Success"
    else
        # if ping fails, set result to failure
        resultado="Failure"
    fi

    # append the variables to the csv file, separated by commas
    echo "$nombre,$dominio,$resultado,$fecha_hora" >> "$archivo_csv"
    
    # print a message to the screen to show the progress
    echo "Procesado: $nombre ($dominio) -> $resultado"
done