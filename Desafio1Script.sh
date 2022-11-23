---Desafio
 nano desafio1.sh
 
#!/bin/bash

echo "Criando diretórios..."
 
mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_AMD 
  
groupadd GRP_VEN

groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -c "Carlos Silva" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_ADM 

useradd maria -m -c "Maria Oliveira" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_ADM 

useradd joao -m -c "Joao Pereira" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_ADM 


useradd debora -m -c "Debora Moraes" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

useradd sebastiana -m -c "Sebastiana Santos" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

useradd roberto -m -c "Roberto Ferreira" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

useradd josefina -m -c "Josefina Machado" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

useradd amanda -m -c "Amanda Rodrigues " -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

useradd rogerio -m -c "Rogerio Alves" -s bin/bash $(openssl passwd -crypt Senha123)
usermod -g GRP_VEN 

echo  "permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root: GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777/publico

echo "Fim......"




