#!/bin/bash
#Script para Realizar Enumeração
clear
echo -n "Qual o Ip ou Endereço Deseja Analisar :"
read rede

echo -e "\e[1;32mRealizando o Envio de Pacotes no Enderecoe\e[0m"
#echo Realizando envio de Pacotes no Endereço $rede 
sudo mkdir $rede
cd $rede
sudo subfinder -d $rede -o $rede.txt
#sleep 30

cat $rede.txt | httprobe | sudo tee subs-$rede.txt
#sleep 30


echo -e "\e[1;32mRealizando Localizacao de Subdominios com FINDOMAISE\e[0m"
##Geração dos Subdomonios com FINDOMAIN
findomain -t $rede

echo -e "\e[1;32mRealizando Inicializacao do AQUATONE\e[0m"
curl -s https://crt.sh/\?q\=%25.$rede\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | httprobe -c 150 |sudo  /home/kali/./aquatone


echo -e "\e[1;32mRealizando Verificacao de DNS com DNSENUN\e[0m"
dnsenum --private -r $rede
