sudo passwd offbreach
if [ $? -eq 0 ]; then
        echo "este usuario ja esta cadastrado"
else
        echo "este usuario nao esta cadastrado"
        sudo adduser offbreach
        sudo usermod -aG sudo offbreach
        su offbreach
        cd
fi

sudo apt-get update && sudo apt-get upgrade -y


java -version
if [ $? -eq 0 ]; then
        echo "o java ja esta instalado"
else
        echo "instalando java"
        sudo apt install default-jre -y
        echo "java instalado com versao recente"
        java -version
fi

wget https://github.com/Off-Breach/offbreach-shell/blob/main/offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar
java -jar offbreach-1.0-SNAPSHOT-jar-with-dependencies.jar


clear
echo "OFFBreach Client instalado com sucesso"