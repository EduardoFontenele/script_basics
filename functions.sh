#!/bin/bash

func_name() {
    echo "First function check!"
}

func_name

say_hello() {
    echo "Hello, $1! So, you are $2 years old, right?"
}

say_hello "Eduardo" 23


# Definindo uma função que retorna um status

verify_age() {
    if [ "$1" -ge 18 ]; then
        return 0
    else 
        return 1
    fi
}

# Chamando a função
verify_age 17

# Verificando status de retorno

if [ $? -eq 0 ]; then
    echo "Você é adulto"
else
    echo "Você é menor de idade"
fi

# Retornando valores "de facto"

function collect_data() {
    read -p "Qual é o seu nome? " nome
    read -p "Qual é a sua idade? " idade
}


process_data() {
    if [ "$idade" -ge 18 ]; then
        echo "Olá, $nome. Você é adulto, pode entrar"
    else
        echo "Olá, $nome. Você é adolescente, não pode entrar"
    fi
}

collect_data
process_data
