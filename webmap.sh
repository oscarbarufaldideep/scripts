sudo apt install -y docker.io  
sudo systemctl enable docker --now  
sudo mkdir /tmp/webmap
sudo docker run -d \
         --name webmap \
         -h webmap \
         -p 8010:8010 \
         -v /tmp/webmap:/opt/xml \
         reborntc/webmap
