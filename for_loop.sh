#!/bin/bash

# Basic syntax:
# for var in list; do
#   //command
# done
#
# Example:
#

for i in 1 2 3 4 5; do
    echo "The value of i is: $i"
done

# Iterating over files

for file in ~/Downloads/*; do
    echo "Filename: $file"
done

# Iterating using an interval

for i in {1..10}; do
    echo "$i"
done

for i in {1..2}; do
    touch "$i.txt"
done

for i in {1..10..2}; do
  echo "Número com passo 2: $i"
done

# For with commands
# It's possible to execute commands, since we are in a shell script

for file in $(ls ~/Desktop); do
    echo "Desktop: $file"
done

