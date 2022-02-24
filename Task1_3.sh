#!/bin/bash
echo "Author name: Daniyal Shahzad"
sleep 1
echo "github: https://www.github.com/Daniyal48"
sleep 1
echo "PROGRAM STARTED!!!!"
sleep 1

echo "Enter the size "
read size
i=1
echo "Enter the numbers one by one"
if [[ $size =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
	while [ $i -le $size ]
	do
		read number
		if [[ $number =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
			sum=$((sum + number))
			i=$((i + 1))
		else
			echo "Input can not be a string please double check your values and try again"
		fi
	done
fi
avg=$(( sum / size))
echo "Average of the number is "$avg
