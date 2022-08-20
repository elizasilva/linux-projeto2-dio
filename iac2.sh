#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim....."

# INSTRUÇÕES DE EXECUÇÃO

# 1º passo: dar permissão de execução do script. 
# chmod +x iac-apache.sh
# 2º passo: executar o script.
# ./iac-apache.sh

