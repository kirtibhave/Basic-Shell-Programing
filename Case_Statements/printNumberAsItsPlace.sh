#!/bin/bash
read -p "enter number" number
case $number in
   1)
      echo "One"
      ;;
   10)
      echo "Ten"
      ;;
   100)
      echo "Hundred"
      ;;
   1000)
      echo "Thousand"
      ;;
   *)
      echo "invalid input"
      ;;
esac






