#!/bin/bash
read -p "Enter the first string :" str1
read -p "Enter the second string :" str2
if [ "$str1" == "$str2" ]
then
 echo "The $str1 and $str2 are equal"
else
 echo "The $str1 and $str2 are not equal"
fi
