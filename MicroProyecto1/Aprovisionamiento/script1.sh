#!/bin/bash
echo "Autenticación super usuario"
sudo -i
echo "Instalación herramientas configuración de la red"
apt-get install net-tools
echo "Instalación editor Vim"
apt-get install vim

echo "Instalación Consul"
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install consul

echo "Autenticación super usuario"
sudo -i
echo "Instalación haproxy"
apt install haproxy
systemctl enable haproxy