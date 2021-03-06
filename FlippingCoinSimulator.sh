#!/bin/bash
echo "This problem displays the winner Heads or Tails"
flip=$((RANDOM%2))
h=0
t=0
diff=0
flag=0
while (( $diff < 2 ))
do
	flip=$((RANDOM%2))
	if (( $flip == 1 ))
	then
		((h++))
		if(( $t == 21 ))
		then
			continue
		fi
	else
		((t++))
		if(( $h == 21 ))
		then
			continue
		fi
	fi
	if (( $h >= 21 | $t >= 21))
	then
		diff=$(($h-$t))
		if (( $diff < 0 ))
		then
			diff=`expr $diff \* -1`
			flag=1
		fi
	fi
done
if (( $flag==1 ))
then
	echo "Tail wins $t times and Head looses $h times with difference of: "$diff 
else
	echo "Head wins $h times and Tail looses $t times with difference of: "$diff 
fi
