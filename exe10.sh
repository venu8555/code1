#!/bin/bash
#calculating the 5 subjects marks...
echo "Enter the  5 subjects marks:" m1 m2 m3 m4 m5 marks enter below
read m1 m2 m3 m4 m5

sum=$(echo "$m1 + $m2 + $m3 + $m4 + $m5" | bc)
avg=$(echo "scale=2; $sum / 5" | bc)

echo "the total Average marks is : $avg"
echo "very good...."
read -p "this venu"
