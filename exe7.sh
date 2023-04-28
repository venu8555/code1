#!/bin/bash
#Create a user and set the passwod from the keyboard. Read user from commandline
if [ $# -ne 1 ]
then
   echo "You entered invalid number of arguments.. Usage $0 username"
else
   read -p "Enter the user name : " name
   grep -w ^$name /etc/passwd > /dev/null 2>&1
   if [ $? == 0 ]
   then
       echo "User $name already exists in this system...we cant create.."
   else
       read -sp "Enter the password for the user : " pass
       useradd $name
       echo "$name:$pass"|chpasswd
       echo -e "\nUser $name is created.."
   fi
fi
