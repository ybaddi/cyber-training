#!/bin/bash


function saisie
{
read op1 op op2
}

function calcule
{
  case "$op" in 
	"+") let res=$op1+$op2 ;;
	"-") let res=$op1-$op2 ;;
	"*") let res=$op1*$op2 ;;
	"/") let res=$op1/$op2 ;;
 esac
}

function calcule2
{
let res=$op1$op$op2
}

#################

if [ "$#" -gt 0 ]
then
	op1=$1; op=$2; op2=$3
else
 saisie
fi

echo $op1
echo $op
echo $op2
calcule
echo $res
calcule2
echo $res
