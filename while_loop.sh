#!/bin/bash

# Using while loop is easy, check it out
#
# while [ condition ]; do
#   // commands
# done
# Example

counter=0

while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done

counter=0

# while true; do
#    echo "Infinite loop, press CTRL+C to exit"
#    sleep 1
# done

# There's also the 'until' loop
# foda-se vou falar em PT, o repo é meu e só eu vou ler
# O until é diferente do while porque ele executa o código enquanto a condição for falsa

until [ $counter -gt 5 ]; do
    echo "Counter*: $counter"
    counter=$((counter + 1))
done
