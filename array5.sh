#!/bin/bash
flag=1
arr=()
for i in $(seq 100)
do
	a=$i
	b=$(( $a%10 ))
	c=$(( $a/10 ))
	if [ $b == $c ]
	then
		k=$a
		arr[$a]=$k
	fi
done
echo ${arr[@]}

