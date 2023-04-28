#!/bin/bash
#Check if the given user is locked or not
function check {
   str=`grep $1 /etc/shadow | cut -d: -f2` 
   echo $str | grep ^'!\$' > /dev/null
  if [ $? -eq 0 ]
    then 
	echo "User $1 is locked "
    else 
	echo "User $1 is not locked"
    fi
}
#end of the function check
#Main shell script start here
if [ $# -eq 0 ]
  then 
	echo -n enter the username:
        read name
        check $name 
else
	check $1
fi
