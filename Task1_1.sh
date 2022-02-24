#!/bin/bash
echo "Author name: Daniyal Shahzad"
sleep 1
echo "github: https://www.github.com/Daniyal48"
sleep 1
echo "PROGRAM STARTED!!!!"
sleep 1

read -p "Enter the directory path " path
if [[ -d $path ]]; then
	if  [[ $( stat -c "%A" $path) =~ "r" ]]; then
		echo "The entered path is valid \n Do you want to create a file there \n"
		read -p "Enter your choice either 'Y' or 'N' " choice
			if [ $choice == 'y' ]; then
				read -p "Enter the file name " file
				touch $path\$file
			else
				echo "Thanks for chosing us!!"
			fi
	else
		echo "You don't have write permissions to directory Thanks for choosing us!!"
	fi
else
	echo "The entered directory doen't exists"
	read -p "Do you want to create the directory " dir_choice
	if [$dir_choice == "y"]; then
		mkdir $path
	else
		echo "Thanks for chosing us"
	fi
fi
