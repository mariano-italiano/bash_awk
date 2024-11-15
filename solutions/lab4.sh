#!/bin/bash
# Data: 01.01.2024
# Autor: Marcin Kujawski
# Opis: Skrypt który zbiera informacje na temat wersji jądra systemu
# Użycie: ./lab4.sh -s <serwer IP>

# Pobranie IP serwera z parametrów skryptu
while getopts "s:" flag
  do
    case "${flag}" in
      s) serverIp=${OPTARG};;
    esac
  done

# Pobranie użytkownika do logowania
read -p "Podaj username dla $serverIp: " user

# Połączenie z serwerem oraz wydobycie wersji jadra i hostname
ssh ${user}@$serverIp 'echo -e "Wersja jądra systemu\033[32m $HOSTNAME \033[0mto:\033[33m `uname -r`\033[0m"'

echo
exit 0
