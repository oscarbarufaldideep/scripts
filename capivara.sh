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

echo -e "\e[1;32mRealizando Inicializacao do AQUATONE\e[0m"
curl -s https://crt.sh/\?q\=%25.$rede\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | httprobe -c 150 |sudo /home/aquatone./aquatone

echo -e "\e[1;32mRealizando Enumeracao de Subdominios com HTTPX\e[0m" 
sudo echo $rede | subfinder -silent | sudo httpx -sc -p 80,443,81,300,591,593,832,981,1010,1311,1099,2082,2095,2096,2480,3000,3128,3333,4243,4567,4711,4712,4993,5000,5104,5108,5280,5281,5601,5800,6543,7000,7001,7396,7474,8000,8001,8008,8014,8042,8060,8069,8080,8081,8083,8088,8090,8091,8095,8118,8123,8172,8181,8222,8243,8280,8281,8333,8337,8443,8500,8834,8880,8888,8983,9000,9001,9043,9060,9080,9090,9091,9200,9443,9502,9800,9981,10000,10250,11371,12443,15672,16080,17778,18091,18092,20720,32000,55440,55672 -o Resultado_$rede_httpx.txt


echo -e "\e[1;32mRealizando Analise com The Harvester\e[0m"
#theHarvester -d $rede -b all -f $rede.TheHarvester.txt
sudo theHarvester -d $rede -l 300 -s -c -v -b all -f $rede.TheHarvester

echo -e "\e[1;32mRealizando Envio de Pacotes no AMASS\e[0m"
echo -e "\e[1;32mIniciando AMASS Fase ENUN\e[0m"
sudo amass enum -d $rede -src -dir $rede.amass.enum
echo -e "\e[1;32mIniciando AMASS Fase ENUN ACTIVE\e[0m"
#sudo amass track -d $rede -dir $rede.amass.track
sudo amass enum -d $rede -active -dir Amass_Coleta -brute -o $rede.txt -p 80,443,8080,8443

echo "Realizando envio de Pacotes no SNIPER"
echo -e "\e[1;32mRealizando Analise com SNIPER FASE RECON\e[0m"
sudo sniper -t $rede -o -m -re -fp -b -w $rede_SNIPER_RECON
sudo sniper -f subs-$rede.txt -m nuke -w $rede_SNIPER_NUKE
sudo sniper -f subs-$rede.txt -m massportscan -w $rede_SNIPER_MASSPORTSCAN































