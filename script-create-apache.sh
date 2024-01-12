#!/bin/bash

echo "Atualizando o Servidor"
echo "----------------------"

# Faz update e upgrade do servidor
apt-get update
apt-get upgrade -y

# instalação do Apache 2
apt-get install apache2 -y

# baixa o Unzip no servidor
apt-ger unzip -y


echo "Baixando e copiando os arquivos da aplicação"
echo "--------------------------------------------"

# posiciona na pasta temporária
cd /tmp

# Baixar arquivos do site no repositorio do GitHub
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompacta os arquivos na pasta linux-site-dio
unzip main.zip

# Posiciona na pasta onde os arquivos foram descompactados
cd linux-site-dio-main

# Copia os arquivos da aplicação para pasta raiz do servidor apache
cp -R * /var/www/html/
