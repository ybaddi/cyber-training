#!/bin/bash

read -p 'entrer la valeur: ' value

echo $value

let "res_1 = $value ** $value"
echo $res_1



res=1
for item in $(seq 1 $value)
do
     let res=$res*$value
done
echo $res

res_2=1
for ((i=0;i<$value;i++)); do
   let res_2=$res_2*$value
	echo $res_2
done
echo $res_2

