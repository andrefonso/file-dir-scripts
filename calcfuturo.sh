#!/bin/bash

# Função para calcular a data futura a partir de uma data inicial e um número de dias
calcula_data_futura() {
    # Converter a data inicial para o formato YYYY-MM-DD para compatibilidade com o comando date
    data_inicial=$(date -d "$(echo $1 | awk -F/ '{print $3"-"$2"-"$1}')" +%Y-%m-%d)

    # Calcular a data futura adicionando o número de dias
    data_futura=$(date -d "$data_inicial +$2 days" +"%d/%m/%Y")

    echo "$data_futura"
}

echo Script para calcular uma data somando um determinado número de dias a data inicial informada:
# Solicitar a data inicial ao usuário
read -p "Digite a data inicial (dd/mm/yyyy): " data_inicial

# Solicitar o número de dias ao usuário
read -p "Digite o número de dias a acrescentar: " numero_de_dias

# Calcular a data futura
data_resultante=$(calcula_data_futura "$data_inicial" "$numero_de_dias")

# Exibir o resultado
echo "A data daqui a $numero_de_dias dias a partir de $data_inicial será: $data_resultante"
