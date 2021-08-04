#!/bin/bash

fichier=$1
#echo $fichier
while read -r ligne; do
	#set -- "$ligne" 
	let note=$(echo  "$ligne" | cut -d ' ' -f3)
              
if [ $note -ge 10 ]; then
		echo $ligne
	fi
done < $fichier
