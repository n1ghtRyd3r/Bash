#!/bin/bash

directory=$(pwd)

for i in $(ls "$directory");
do
  name=$(echo "$i" | cut -d "." -f1)
  extension=$(echo "$i" | cut -d "." -f2)
  if [[ "$extension" == "c" ]];
  then
    echo "Compilando el archivo $i"
    g++ "$i" -o "$name"
    echo "Archivo compilado"
    exit
  fi
done

echo "No se ha encontrado el archivo a compilar"
