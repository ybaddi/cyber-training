#!/bin/bash

if [ "$#" -eq 0 ]
then
	echo "veuillez enter le folder: "
	read -r folder
else
	folder=$1
fi


cd $folder

fo=0
fi=0
fx=0

for i in *
do

	if [ -d "$i" ]; then 
		let fo=fo+1
	fi
	if [ -f "$i" ]; then
                let fi=fi+1
        fi
	if [ -x "$i" ]; then
                let fx=fx+1
        fi
done

echo "on a $fo folder, $fi fichiers standard et $fx fichier excutable dans le repertoire $folder"
