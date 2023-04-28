#!/bin/bash

if [[ $# -ne 2 ]];
 then
  echo "Error: Please provide exactly two numbers as positional parameters."
  exit 1
fi
num1=$1
num2=$2
if [[ ! $num1 =~ ^[0-9]+$ || ! $num2 =~ ^[0-9]+$ ]];
then
  echo "Error: Please provide valid numbers as positional parameters."
  exit 1
fi

if [[ $num1 -eq $num2 ]];
then
  echo "$num1 is equal to $num2"
elif [[ $num1 -gt $num2 ]];
then
  echo "$num1 is greater than $num2"
else
  echo "$num1 is less than $num2"
fi
#end
