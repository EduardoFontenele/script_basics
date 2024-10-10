#!/bin/bash

# É possível também fazer switch case, quando if não for a melhor opção
# Exemplo

echo "Choose an option (A, B, C):"
read option

case $option in
    A) echo "You're stupid" ;;
    B) echo "You're dumb" ;;
    C) echo "Suck my ass" ;;
    *) echo "Never ever seen someone so idiot";;
esac
