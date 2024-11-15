#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Skrypt wyświetlający "Cześć <imie>" dla uzytkownika
# Użycie: ./lab1.sh <imie>


if [ $# -eq 1 ] ; then
        echo
        echo "Cześć $1!"
        echo
else
        echo
        echo "Usage: $0 <imie>"
        echo
        exit 1
fi
