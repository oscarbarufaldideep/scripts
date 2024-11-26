#!/bin/bash
#Script para Realizar
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo mkdir /tmp/webmap
pause
sudo docker run -d \
         --name webmap \
         -h webmap \
         -p 8000:8000 \
         -v /tmp/webmap:/opt/xml \
         reborntc/webmap
