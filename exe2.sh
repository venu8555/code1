#!/bin/bash

echo "Enter file path: "
read file_path

if [ -e "$file_path" ]
then
  echo "File exists."

  if [ -d "$file_path" ]
  then
    echo "It is a directory."
  elif [ -L "$file_path" ]
  then
    echo "It is a symbolic link."
  else
    echo "It is a file."
  fi

  if [ -r "$file_path" ]
  then
    echo "It has read permission."
  else
    echo "It does not have read permission."
  fi

  if [ -w "$file_path" ]
  then
    echo "It has write permission."
  else
    echo "It does not have write permission."
  fi

  if [ -x "$file_path" ]
  then
    echo "It has execute permission."
  else
    echo "It does not have execute permission."
  fi

  if [ $(stat -c '%s' "$file_path") -gt 0 ]
  then
    if [ $(stat -c '%a' "$file_path") -ge 4000 ]
    then
      echo "SUID is enabled."
    else
      echo "SUID is not enabled."
    fi

    if [ $(stat -c '%a' "$file_path") -ge 2000 ]
    then
      echo "Sticky bit is enabled."
    else
      echo "Sticky bit is not enabled."
    fi

    if [ -b "$file_path" ]
    then
      echo "It is a block special file."
    elif [ -c "$file_path" ]
    then
      echo "It is a character special file."
    elif [ -p "$file_path" ]
    then
      echo "It is a named pipe (FIFO) special file."
    else
      echo "It is not a special file."
    fi
  fi
else
  echo "File does not exist."
fi
