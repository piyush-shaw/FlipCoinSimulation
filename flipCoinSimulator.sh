#!/bin/bash -x
echo "This problem display head or tail as winner"
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
echo "Heads"
else
echo "Tails"
fi

flips=1
heads=0
tails=0
while [ $flips -le 42 ]
do
((flips++))
if [ $((RANDOM%2)) -eq 1 ]
then
echo "head wins"
((heads++))
else
echo "tail wins"
((tails++))
fi
if [ $heads -eq 21 ]
then
echo "heads wins by "$heads" times"
exit
elif [ $tails -eq 21 ]
then
echo "tails wins by "$tails" times"
exit
elif [ $heads -eq $tails -a $tails -eq $heads ]
then
echo "both heads and tails are tie"
exit
else
continue
fi
done


