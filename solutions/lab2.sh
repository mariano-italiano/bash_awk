#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Prosty kalkulator arytmetyczny
# Użycie: ./lab2.sh

# Pobranie czasu wystartowania skryptu
start=`date +%s.%N`

# Wczytanie liczb
read -p "Podaj pierwszą liczbę: " a
read -p "Podaj drugą liczbę: " b
read -p "Podaj operację [+, -, /, *]: " operacja

# Wykonanie operacji arytmetycznej i wyświetlenie wyniku
echo -n "WYNIK: "
case $operacja in
        "+") echo "scale=2; $a+$b" | bc ;;
        "-") echo "scale=2; $a-$b" | bc ;;
        "/") echo "scale=2; $a/$b" | bc ;;
        "*") echo "scale=2; $a*$b" | bc ;;

        *)      echo "Wybrałeś niedozwolony znak operacji!" ;;
esac

# Pobranie czasu zakończenia skryptu
koniec=`date +%s.%N`
echo

# Obliczenie długości trwania i wyświetlenie wartości na zółto
czasWykonania=$( echo "$koniec - $start" | bc -l )
echo -e "Czas wykonania obliczeń:\033[33m $czasWykonania \033[0msekund"
echo

exit 0
