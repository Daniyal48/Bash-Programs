#!/bin/bash
echo "Author name: Daniyal Shahzad"
sleep 1
echo "github: https://www.github.com/Daniyal48"
sleep 1
echo "PROGRAM STARTED!!!!"
sleep 1
echo "Enter the subject count "
read size
i=1
echo "Enter the marks one by one"
total=100
if [[ $size =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
	while [ $i -le $size ]
	do
		read number
		if [[ $number =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] && (( $number <=$total)) ; then
			sum=$((sum + number))
			i=$((i + 1))
		else
			echo "Input can not be a string or a value more than 100 please double check your values and try again"
		fi
	done
fi
avg=$(( sum / size))
first=60
second_start=50
second_end=59
third_start=40
third_end=49
if (( $avg >=$first))
then
echo "Your average is "$avg" and you got First division"
elif (( $avg >= $second_start )) || (( $avg <=$second_end ))
then
echo "Your average is "$avg" and you have Second division"
elif (( $avg >= $third_start )) || (( $avg <= $third_end ))
then
echo "Your average is "$avg" and you got Third Division"
else
echo "Your average is "$avg" which is less than 40 and unfortunately you are failed"
fi
