#!/bin/bash

if [ "$#" -eq 0 ]
then
	echo "veuillez enter le folder: "
	read -r folder
else
	folder=$1
fi


cd $folder

num=0


for i in *
do

	tab[$num]=$i
	let num=$num+1
done


for (( i=$num ; i >=0 ; i=$i-1 )); do
echo ${tab[$i]}
done



