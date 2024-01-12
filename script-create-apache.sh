#!/bin/bash

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

wget 