#!/bin/bash
#Script para Realizar Enumeração
clear
echo -n "Qual Dominio Deseja Analisar :"
read rede

echo -e "\e[1;32mRealizando Analise do Ambiente\e[0m"
#echo Realizando envio de Pacotes no Endereço $rede 
sudo mkdir $rede
mkdir idtrack.com.br
cd reconftw/
sudo ./reconftw.sh -d $rede -r -a --deep -o /home/kali/$rede
