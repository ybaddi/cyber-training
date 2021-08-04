#!/bin/bash



function verfyUser
{
    if grep "^$user" /etc/passwd > /dev/null
    then 
	echo $ligne
    fi

}

######################
if [ "$#" -eq 0 ]; then 
	
	echo " chemin du fichier SVP: "
	read -r fichier
else
	fichier="$1"
fi


if [ -e "$fichier" ]; then 
	while read -r ligne; do
		user=$(echo "$ligne" | cut -d ' ' -f1)
		verfyUser
        done < $fichier
else
	echo "le fichier n'existe pas"
fi
