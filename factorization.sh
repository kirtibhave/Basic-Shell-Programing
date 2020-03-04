
#/bin/bash -x
read -p  "enter number for prime factorisation" number
x=$number
for((i=2;$x>i;i++))
do
	if [ $(($x%$i)) == 0 ]
	then
		echo $i 
      x=$(($x/$i));
	fi
	if [ $number > 2 ]
		echo $x
	fi
done
