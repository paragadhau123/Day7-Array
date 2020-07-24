#!/bin/bash
function findTriplets()
{
	arr=$1
	n=$2
   	found=1
    	   	echo "Elements in array which having addition zero ====> "
    	for (( i=0; i<$(expr $n-2); i++ ))
    	do
    	      for (( j=$(expr $i+1 ); j<$n-1 ; j++ ))
    		do
    			for (( k=$(expr $i+2); k<$n ; k++ ))
    			do
    				a= $((expr ${arr[$i]} + ${arr[$j]} + ${arr[$k]} ))
                               if [ $a == 0 ]
				then
					echo "(${arr[$i]},${arr[$j]},${arr[$k]})"
					found=1
				fi
			done
    		done
     	done
     	if [ $found == 0 ]
	then
		echo "No elements addition zero"
	fi
}
arr=(-1 2 -3 1 5 3 4 -5)
n=${#arr[@]}
findTriplets $arr $n







