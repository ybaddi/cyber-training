#!/bin/bash



if [ "$#" -eq 0 ] 
then
	echo "veuillez enter la valeur: "
	read -r val
else
	val=$1
fi

if [ "$val" -le 0 ]
then
	let res=1
fi

val2=$val
res=1

while [ "$val" -ne 1 ]
do
	let res=$res*$val
	let val=val-1
done
echo $res
