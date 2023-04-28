#!/bin/bash
#check the given user exist in the system. if yes, lock the user
read -p "Enter a user name : " name
grep -w ^$name /etc/passwd > /dev/null
if [ $? -eq 0 ]
then
   usermod -L $name
   echo " $name account is locked.."
else
   echo "Given user $name doesnt exist in this system.."
   echo "Enter Valid name.."
fi
