#!/bin/bash

# Função para calcular o número de dias entre duas datas no formato brasileiro (dd/mm/yyyy)
dias_entre_datas() {
    # Converter as datas para o formato YYYY-MM-DD para compatibilidade com o comando date
    data_inicial=$(date -d "$(echo $1 | awk -F/ '{print $3"-"$2"-"$1}')" +%s)
    data_final=$(date -d "$(echo $2 | awk -F/ '{print $3"-"$2"-"$1}')" +%s)

    # Calcular a diferença em segundos e converter para dias
    diferenca=$(( (data_final - data_inicial) / 86400 ))

    echo "$diferenca"
}

echo Script para cálculo de número de dias entre duas datas:
# Solicitar a data inicial ao usuário
read -p "Digite a data inicial (dd/mm/yyyy): " data1

# Solicitar a data final ao usuário
read -p "Digite a data final (dd/mm/yyyy): " data2

# Calcular o número de dias entre as duas datas
dias=$(dias_entre_datas "$data1" "$data2")

# Exibir o resultado
echo "O número de dias entre as datas  $data1 e $data2 é: $dias"


