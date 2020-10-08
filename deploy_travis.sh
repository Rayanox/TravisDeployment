#!/bin/bash


echo "     --- Demarrage du script de deploiement dans Travis --- "

jarName=`ls *.jar`


echo "PATH_LIVRAISON_CIBLE = $PATH_LIVRAISON_CIBLE"
echo "     --- Suite --- "       
curl -o $PATH_DEPLOYMENT_FILE $TRAVIS_DEPLOYMENT_GITHUB_URL
sed -i "s/\$argument1/$jarName/" $PATH_DEPLOYMENT_FILE
sed -i "s#\$argument2#$PATH_LIVRAISON_CIBLE#" $PATH_DEPLOYMENT_FILE

sshpass -p "$PASSWORD_MY_SERVER" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $LOGIN_MY_SERVER@$IP_MY_SERVER "rm -f $PATH_LIVRAISON_CIBLE/*.jar"
sshpass -p "$PASSWORD_MY_SERVER" scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ./$jarName $LOGIN_MY_SERVER@$IP_MY_SERVER:$PATH_LIVRAISON_CIBLE

echo y | plink -ssh $LOGIN_MY_SERVER@$IP_MY_SERVER -pw $PASSWORD_MY_SERVER -m ./$PATH_DEPLOYMENT_FILE



echo "     --- Fin du script de deploiement dans Travis --- "