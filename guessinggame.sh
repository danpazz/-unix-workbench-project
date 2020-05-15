#!/usr/bin/env bash
#File: guessinggame.sh

function guessing() {
	file_counter=$(ls | wc -l)
	user_input=$1
	while [[  $user_input -le $file_counter ]] || [[ $user_input -ge $file_counter ]]
	do
		if [[  $user_input -gt $file_counter ]]
	  		then 
	     			echo "The number you entered is higher than the number of files"
	   			echo " "
	     		elif [[  $user_input -lt $file_counter ]]
				then
	     				echo "The mnumber you entered is lower than the  number of files"
						echo " "
				elif [[ $user_input -eq $file_counter ]]; then
					echo "*** Congrats you guess the number of files ***"
					echo "Program ends..."
					break
	  	fi 
	echo "Enter your guessing:" 
	read user_input
	done
}

function check_imput() {
	if [[ -z $user_input ]] 
		then
		echo "Guess how many files are in the current directory:" 
		read user_input
		check_imput $user_input
	else
		guessing $user_input
	fi
}

check_imput