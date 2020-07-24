#!/bin/bash -x
for((i=0;i<11;i++))
do
random=${RANDOM:0:3}
nos[$i]=$random
done
echo "Array before sorting :${nos[@]}"
temp=0
for((i=0; i<11; i++))
do
for ((j=i+1; j<11; j++))
do
if [ ${nos[i]} -gt ${nos[$((j))]} ]
then
temp=${nos[i]}
nos[$i]=${nos[$((j))]}
nos[$((j))]=$temp
fi
done
done
echo "Array after sorting:${nos[@]}"
echo "Second smallest :${nos[1]}"
echo "Second largest :${nos[9]}"
