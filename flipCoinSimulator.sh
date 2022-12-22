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
while [ $flips -le 20 ]
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
echo "total heads are :" $heads "total tails are :" $tails
done


