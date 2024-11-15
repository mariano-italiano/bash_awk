#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Skrypt który losowo generuje 5 liczb z zakresu podanego przez użytkownika
# Użycie: ./lab2.sh <liczba>

function losuj_liczbe {
        local liczba=$(($RANDOM%$1))
        echo -n "$liczba "
}

if [ $# -eq 1 ] ; then
        echo "Generowanie 5 losowych liczb z zakresu 0 - $1"
        echo -n "Wygenerowane liczby to: "
        losuj_liczbe $1
        losuj_liczbe $1
        losuj_liczbe $1
        losuj_liczbe $1
        losuj_liczbe $1
        echo
else
        echo
        echo "Usage: $0 <liczba>"
        echo
        exit 0
fi
