#!/bin/bash
#Script para Realizar Enumeração
clear
echo -n "Qual o Arquivo com os Endereços que Deseja Analisar :"
read rede
echo -n "Qual o Nome da Empresa que Deseja Analisar :"
read empresa

echo -e "\e[1;32mRealizando o Analise dos Enderecos IP\e[0m"
sudo nmap --script vuln -sV --open --script exploit,whois-domain,whois-ip -iL $rede -oA Recon_CVE_$empresa
