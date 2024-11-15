#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Skrypt sprawdzający połączenia do stron www zdefiniowanych w pliku 
# Użycie: ./lab6.sh -f urls.txt

# Pobranie nazwy pliku z parametrów skryptu
while getopts "f:" flag
  do
    case "${flag}" in
      f) filename=${OPTARG};;
    esac
  done

# Użycie "readarray -t" aby usunąć końcowy separator (domyślnie nową linię) z każdej odczytanej linii
readarray -t urls < $filename

# Procesowanie każdej lini ze zmiennej tablicowej urls
for url in "${urls[@]}"; do
  webname=$(echo "$url" | cut -d . -f 2)
  curl -sI "$url" | grep HTTP | awk '{print $2}' > "$webname.txt"
done
