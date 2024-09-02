#!/bin/bash
# Lista apenas arquivos no diretório atual
# ls -p | grep -v /
ls -l | grep -v '^d'
