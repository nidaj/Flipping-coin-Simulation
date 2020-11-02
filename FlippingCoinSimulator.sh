#!/bin/bash
echo "This problem displays the winner Heads or Tails"
flip=$((RANDOM%2))
h=0
t=0
flag=0
#read -p "Enter number of times u wnat to flip the coin: " n
#for (( f=1; f<=n; f++ ))
while (($flag==0))
do
	flip=$((RANDOM%2))
	if (( $flip == 1 ))
	then
		((h++))
		if(( $h == 21 ))
		then
			flag=1
			diff=$(($h-$t))
			echo "Head wins by: "$diff
		fi
	else
		((t++))
		if(( $t ==21 ))
		then 
			flag=1
			diff=$(($t-$h))
			echo "Tail wins by: "$diff
		fi
	fi
done
#echo "Head wins: "$h "times"
#echo "Tail wins: "$t "times"
