#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Skrypt przeliczający temperaturę pomiędzy stopniami Celcjusza i Fahrenheita
# Użycie: ./lab3.sh

echo "---------------------------------------------------------"
echo "| Wybierz operację                                      |"
echo "| 1. Przeliczenie temperatury Celcjusz -> Fahrenheit    |"
echo "| 2. Przeliczenie temperatury Fahrenheit -> Celcjusz    |"
echo "---------------------------------------------------------"

read -p "Podaj opcję: [1/2]: " wybor
if [ $wybor -eq 1 ] ; then
        read -p "Podaj temperaturę w stopniach Celcjusza: " celcjusz
        TEMP=$(echo "scale=2; ($celcjusz * (9 / 5) + 32 )" | bc)
        echo "$celcjusz stopni Celcjusza to $TEMP w stopniach Fahrenheita"
elif [ $wybor -eq 2 ] ; then
        read -p "Podaj temperaturę w stopniach Fahrenheita: " fahrenheit
        TEMP=$(echo "scale=2; ($fahrenheit - 32) * (5 / 9)" | bc)
        echo "$fahrenheit stopni Fahrenheita to $TEMP w stopniach Celcjusza"
else
        echo "Niepoprawny wybór!"
        exit 0
fi

exit 0
