#!/bin/bash

echo "MENU"
echo "1. Print PVs"
echo "2. Print VGs"
echo "3. Print LVs"
echo "4. Print Block Devices"
echo "5. Print OS Version"
echo "E. Exit"

while true
do
  read -p "Enter your choice: " choice
  case $choice in
    1)
      echo "Printing PVs:"
      sudo pvdisplay
      ;;
    2)
      echo "Printing VGs:"
      sudo vgdisplay
      ;;
    3)
      echo "Printing LVs:"
      sudo lvdisplay
      ;;
    4)
      echo "Printing Block Devices:"
      sudo lsblk
      ;;
   5)
      echo "OS Version:"
      cat /etc/redhat-release
      ;;
   E)
      echo "Exiting..."
      exit
      ;;
    *)
      echo "Invalid input. Please enter a valid choice."
      ;;
  esac
done
