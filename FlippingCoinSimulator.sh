#!/bin/bash
echo "This problem displays the winner Heads or Tails"
flip=$((RANDOM%2))
h=0
t=0
read -p "Enter number of times u wnat to flip the coin: " n
for (( f=1; f<=n; f++ ))
do
	flip=$((RANDOM%2))
	if (( $flip == 1 ))
	then
		((h++))
	else
		((t++))
	fi
done
echo "Head wins: "$h "times"
echo "Tail wins: "$t "times"
