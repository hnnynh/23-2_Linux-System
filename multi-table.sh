#!/bin/sh
if [ $# -ne 2 ]
then
	echo "Invalid Input"
	exit 1
fi

if [ $1 -ge 1 ] && [ $2 -ge 1 ]
then
	for i in $(seq 1 $1)
	do
		for j in $(seq 1 $2)
		do
			result=`expr $i \* $j`
			printf "%d*%d=%d\t" $i $j $result
		done
	echo 
	done
else
	echo "Invalid Input"
fi
exit 0
