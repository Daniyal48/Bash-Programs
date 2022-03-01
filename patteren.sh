#!/bin/bash
pos1="left"
pos2="full"
pos3="right"
echo "Author: Daniyal Shahzad"
sleep 1
echo "Github:https://github.com/Daniyal48"
sleep 1
echo "			PROGRAM STARTED"
read -p "Enter the numebr of rows " n
if [ "$1" = "$pos2" ]; then
for((i = 0; i <= n; i++))
do
for((s = n; s > i; s--))
do
    printf " "
done
for((j=0; j<i; j++))
do
    printf "* "
done
printf "\n"
done
for((i = 1; i < n; i++))
do

    for((s = 0; s < i; s++))
do
    printf " ";
done
for((j = n; j > i; j--))
do
    printf "* "
#// ending line after each row
done
printf "\n"
done
elif [ "$1" = "$pos1" ]; then
for((i = 1; i <= n; i++))
do
for((j = 1; j <= i; j++))
do
printf "*"
done
printf "\n"
done
for((i = n; i >= 1; i--))
do
for((j = 1; j <= i; j++))
do
printf "*"
done
#// ending line after each row
printf "\n"
done
elif [ "$1" = "$pos3" ]; then
for((i = 1; i <= n; i++))
do
for((j = i; j < n; j++))
do
printf " ";
done
for((j = 1; j <= i; j++))
do
printf "*";
done
printf "\n";
done
for((i = n; i >= 1; i--))
do
for((j = i; j <= n; j++))
do
printf  " ";
done
for((j = 1; j < i; j++))
do
printf "*";
done
#// ending line after each row
printf "\n";
done

else
echo "check input"
fi
