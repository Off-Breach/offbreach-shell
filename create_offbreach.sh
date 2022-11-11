#!/bin/bash
echo "Este é o script de instalação e configuração do Offbreach"
echo "O script irá fazer diversas modificações na sua máquina"
echo "Tem certeza que deseja continuar? S\n"
read inst
if [ \"$inst\" == \"s\" ]
#Verificando e criando usuário
then echo "Fazendo verificação de usuário"
getent passwd offbreach
if [ $? -eq 0 ]
then echo \“Este usuário já está cadastrado\”
else echo \"O usuário nao existe, criando usuario\"
sudo adduser offbreach
sudo usermod -aG sudo offbreach
su offbreach 
cd
fi

#Atualizando repositórios e pacotes
echo "Atualizando repositórios e pacotes do sistema"
sudo apt-get update && sudo apt-get upgrade -y

echo "Deseja instalar a interface grafica? S\n"
read inst
if [ \"$inst\"  == \"s\" ]
then echo \“Instalando a imagem\”
sudo apt-get install lxde lxde-core xrdp tigervnc-standalone-server lightdm -y  
fi

#Verificando e instalando o Java
echo "Verificando versão do Java"
java --version
if [ $? -eq 0 ]
then echo \"O Java já está instalado\"
else echo \"O Java está não instalado\"
sudo apt install default-jdk -y
clear
echo \"JAVA instalado na versao 11\"
java --version
sleep 5
fi

echo \"Sera realizado agora, a instalacao offbreach, nosso sistema de monitoramento\"
sleep 4
clear

sudo apt update && sudo apt upgrade -y
clear
wget github.com/Off-Breach/offbreach-install/raw/main/offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker run -d -p 3306:3306 --name containerDB -e "MYSQL_DATABESE=offbreach" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7
sudo docker pull openjdk:8-jre
sudo docker build -t openjdk:8-jre .
sudo docker run -d -p --name offbreach openjdk:8-jre 

else echo "A instalação foi cancelada"

fi