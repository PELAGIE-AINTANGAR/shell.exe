#!/bin/bash

if [ $2 == "+" ]; then
	total=$(expr $1 + $3)
	echo $total
elif [ $2 == "-" ]; then 
	totals=$(expr $1 - $3)
	echo $totals
elif [ "$2" == "x" ]; then
	echo $(($1 * $3))
elif [ $2 == "/" ]; then
	total=$(expr $1 / $3)
	echo $total

fi
