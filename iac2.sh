#!/bin/bash

echo "Iniciando..."

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y


echo "Realizando as instalações..."
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y


echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Limpando arquivos tmp"
cd /var/www/html
rm -Rf /tmp/linux-site-dio-main
rm main.zip

echo "Finalizando..."
