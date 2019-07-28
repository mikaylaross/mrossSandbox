#!/bin/bash

CG=`ls coolguy.txt`
SA=`ls sharkattack.txt`

#IF STATEMENT
if [[ ${CG} = "coolguy.txt" ]]; then
	echo "Removing ${CG}"
	rm coolguy.txt
else
	echo "no cool guy to remove"
fi

if [[ ${SA} = "sharkattack.txt" ]]; then
	echo "Removing ${SA}"
	rm sharkattack.txt
else
	echo "no shark attack here"
fi

ls ../../squid/perfectman > sharkattack.txt
cp sharkattack.txt coolguy.txt

#FOR STATEMENT
CMF=`cat coolguy.txt`
for i in ${CMF}; do
	#sleep 1
	echo $i
done

#WHILE DO STATEMENT
k=0
while [[ ${k} -lt "10" ]]; do
	echo ${k}
	k=$(($k+1))
done

#CASE STATEMENT
date=`date +%s | cut -c 10`
echo "date=${date}"
case $date in
	1)
		echo "one"
	;;
	2)
		echo "two"
	;;
	3)
		echo "three"
	;;
	4)
		echo "four"
	;;
	5)
		echo "five"
	;;
	6)
		echo "six"
	;;
	7)
		echo "seven"
	;;
	8)
		echo "eight"
	;;
	9)
		echo "nine"
	;;
	*)
		echo "ten or zero"
	;;
esac
