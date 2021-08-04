#!/bin/bash

setUser()
{
echo "set user"
echo  -e "entrer le nom de l'utilisateur \n" 
read -r user
}


verifyuser()
{
echo "verify user"
if  grep "^$user" /etc/passwd > /dev/null ; then
	echo "user exist"
else
	echo "user not exist"
fi
}

getUID()
{
echo "get UID"
id $user | cut -d ' ' -f1 | cut -d '=' -f2 | cut -d '(' -f1
}


###########
# MEnu
##########
reponse=1
while [  "$reponse" != 'q' ]; do

  echo -e "Menu: \n"
  echo -e "1- Vérifier l'existence d'un utilisateur" 
  echo -e "2- Connaître l'UID d'un utilisateur" 
  echo -e "q- Quitte"
  read rep

  case $rep in
    
   1)
	setUser
	verifyuser
	;;
  2)
        setUser
	getUID
	;;
  q)    
        #$reponse='q'
	echo "goodbye"
        exit
	;;

esac

done
