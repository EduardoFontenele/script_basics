#!/bin/bash

name="Monique"
age=21

echo "Nome: $name"
echo "Idade: $age"

names=("Monique", "Eduardo", "Fulano")

for name in "${names[@]}"; do
    echo "$name"
done

numbers=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
counter=0

for number in "${numbers[@]}"; do
    echo "$number"
done
