#!/bin/bash

echo "Criando Diretorios..."
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando Grupos..."
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando Usuarios..."
sudo useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

sudo useradd debora -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

sudo useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "Alterando Grupos dos Diretorios..."
sudo chown -R root:GRP_ADM /adm
sudo chown -R root:GRP_VEN /ven
sudo chown -R root:GRP_SEC /sec

echo "Alterando Permissoes dos Diretorios..."
sudo chmod -R 777 /publico
sudo chmod -R 770 /adm
sudo chmod -R 770 /ven
sudo chmod -R 770 /sec
