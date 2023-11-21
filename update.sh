sudo apt install openssh-server
sudo systemctl status ssh
sudo systemctl start ssh
sudo snap install ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
sudo apt install unzip
unzip ngrok-stable-linux-amd64.zip
./ngrok tcp 22


