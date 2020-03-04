#
#!/bin/bash 
echo -n "enter number for prime factorisation"
read number
x=$num
for((i=2;$x -ge i;i++))
do
  while [ $(($x%$i)) -eq 0 ]
  do
         echo $i;
         x=$(($x/$i));
  done
         if [ $num -lt 2 ]
         then
              echo "negative number"
         fi
done
