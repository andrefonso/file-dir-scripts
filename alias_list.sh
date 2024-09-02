#!/bin/bash

# Executa o comando awk para listar aliases
echo
echo Listagem dos meus aliases criados por mim e salvos no arquivo .zshrc:
echo
awk '/# Meus aliases/{flag=1;next}/^#/{flag=0}flag' ~/.zshrc
echo Final da listagem!
