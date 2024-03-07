#!/bin/bash
#Script para Realizar Instalacao de Ambiente
sudo apt update && sudo apt upgrade -y

clear
echo -n "Iniciando a Instalacao dos APlicativos :"

echo -n "===INSTALACAO AQUATONE==="
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip

echo -n "===INSTALACAO METAGOOFIL==="
sudo apt install metagoofil -y

echo -n "===INSTALACAO MALTEGO==="
sudo apt install maltego

echo -n "===INSTALACAO OSINT Maigret==="
git clone https://github.com/soxoj/maigret && cd maigret
sudo pip3 install -r requirements.txt
cd ..

echo -n "===INSTALACAO FINDOMAIN==="
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain
findomain --help

echo -n "===INSTALACAO ANYDESK==="
sudo apt install -y gnups
sudo apt install -y gnupg2 curl
sudo sh -c 'echo "deb http://deb.anydesk.com/ all main" >/etc/apt/sources.li st.d/anydesk.list'   
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -  
sudo apt -y update && sudo apt -y install anydesk 


echo -n "===INSTALACAO ARJUN==="
sudo apt install arjun -y

echo -n "===INSTALACAO GOPHISHI==="
git clone https://github.com/gophish/gophish.git
cd gophish
go build
cd ..

echo -n "===INSTALACAO TURBOSEARCH==="
pip3 install git+https://github.com/helviojunior/turbosearch.git#egg=turbosearch

echo -n "===INSTALACAO CTFR==="
git clone https://github.com/UnaPibaGeek/ctfr.git

echo -n "===INSTALACAO SHERLOCK==="
sudo git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
cd /home/kali

echo -n "===INSTALACAO OWASP ZAP==="
sudo apt install zaproxy -y

echo -n "===INSTALACAO FEROXBUSTER==="
sudo apt install feroxbuster

echo -n "===INSTALACAO SECLISTS==="
sudo apt-get install seclists

echo -n "===INSTALACAO SLOWLORIS==="
git clone https://github.com/gkbrk/slowloris.git

echo -n "===INSTALACAO GOLDENEYE==="
git clone https://github.com/jseidl/GoldenEye.git

echo -n "===INSTALACAO spiderfoot==="
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
tar zxvf v4.0.tar.gz
cd spiderfoot-4.0
pip3 install -r requirements.txt
cd ..
 
echo -n "===INSTALACAO slowhttptest==="
sudo apt install slowhttptest -y

echo -n "===INSTALACAO GooFuzz==="
git clone https://github.com/m3n0sd0n4ld/GooFuzz.git

echo -n "===INSTALACAO httprobe==="
sudo apt install httprobe

git clone https://github.com/projectdiscovery/httpx.git
cd httpx/cmd/httpx
go build .
mv httpx /usr/local/bin/
cd ..
cd ..
cd ..
sudo apt install httpx-toolkit

echo -n "===INSTALACAO Sn1per===="
git clone https://github.com/1N3/Sn1per
cd Sn1per
sudo bash install.sh
cd /home/kali

echo -n "===INSTALACAO WALLPAPERS===="
sudo apt install kali-wallpapers-legacy

echo -n "===###INSTALAÇÃO OWASPZAP KALI ==###"
sudo apt install zaproxy

echo -n "===###INSTALAÇÃO Slowloris ###NEGAÇÃO DE SERVIÇO"
git clone https://github.com/gkbrk/slowloris.git

echo -n "===###INSTALAÇÃO Slowloris ###WEBCOPILOT"
git clone https://github.com/h4r5h1t/webcopilot 
cd webcopilot
chmod +x webcopilot install.sh 
mv webcopilot /usr/bin/ 
./install.sh
























