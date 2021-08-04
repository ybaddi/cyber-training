#!/bin/bash




if [ "$#" -eq 0 ]; then

	echo " chemin du fichier SVP: "
	read -r fichier
else
	fichier="$1"
fi


if [ -e "$fichier" ]; then
	while read -r ligne; do
		nom=$(echo "$ligne" | cut -d ' ' -f1)
		note1=$(echo "$ligne" | cut -d ' ' -f2)
		note2=$(echo "$ligne" | cut -d ' ' -f3)
		note3=$(echo "$ligne" | cut -d ' ' -f4)
		let moy=($note1+$note2+$note3)/3
  		echo "l'etudiant $nom a pour note finale $moy"
        done < $fichier
else
	echo "le fichier n'existe pas"
fi
