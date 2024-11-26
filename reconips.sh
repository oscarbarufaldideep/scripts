#!/bin/bash
#Script para Realizar Enumeração
clear
#sudo nmap --script-updatedb
#sudo nmap -sS -sV -T3 -A -v -n --open --script=vuln --script=exploit -iL Ipscatsul -oA CVEs_Ipscatsul_Vuls.xml
#sudo nmap -sS -sV -T3 -A -v -n --open --script=vuln --script=exploit -iL Ipsunesul -oA CVEs_Ipsunesul_Vuls.xml
#sudo nmap -sS -sV -T3 -A -v -n --open --script=vuln --script=exploit -iL IpsViacaoOuroePrata -oA CVEs_IpsViacaoOuroePrata_Vuls.xml
sudo nmap -sS -sV -T3 -A -v -n --open --script=vuln --script=exploit -iL Ipsviopex -oA CVEs_Ipsviopex_Vuls.xml
sudo nmap -sS -sV -T3 -A -v -n --open --script=vuln --script=exploit -iL ipsouroeprata -oA CVEs_ipsouroeprata_Vuls.xml
