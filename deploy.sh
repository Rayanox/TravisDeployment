#!/bin/bash

jarName=$1
PATH_LIVRAISON_CIBLE=$2

echo "jarName = $jarName"
echo "PATH_LIVRAISON_CIBLE = $PATH_LIVRAISON_CIBLE"
qsdf
ls
exit 4

# processStarted=`ps aux | grep "$jarName" | awk '{if($11 != "grep") {print $2} }'` 
# if [ -z "$processStarted" ] ; then echo "Process non execute" ; else echo "Process deja en cours d'execution, kill maintenant..." && kill $processStarted ; fi
# nohup java -jar $PATH_LIVRAISON_CIBLE/$jarName > $PATH_LIVRAISON_CIBLE/logStart.txt &