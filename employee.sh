#!/in/bash -x
#!/bin/bash
echo -n "enter number or prime factorisation"
read number
x=$num
for(( i=2; $x>1; i++ ))
do
  while [ $(($x%$i)) -eq 0 ]
  do
         echo $i;
         x=$(($x/$i));
  done
         if [ $num -lt 1 ]
         then
              echo "negative number"
         fi
done
