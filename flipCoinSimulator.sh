#!/bin/bash -x
echo "This problem display head or tail as winner"
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
echo "Heads"
else
echo "Tails"
fi


