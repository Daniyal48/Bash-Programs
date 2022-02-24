#!/bin/bash
echo "Author name: Daniyal Shahzad"
sleep 1
echo "github: https://www.github.com/Daniyal48"
sleep 1
echo "PROGRAM STARTED!!!!"
sleep 1

echo "Enter a Number "
read n
i=1
echo "Enter range number "
read n2
if [[ ! $n =~ ^[0-9]{8} ]] || [[ ! $n2 =~ ^[0-9]{8} ]]; then
	while [ $i -le $n2 ]
	do
	echo " $n x $i = `expr $n \* $i`"
	i=`expr $i + 1`
	done
else
	echo "Please check your input"
fi
