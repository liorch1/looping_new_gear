#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework:

read -p "please enter a user name: " user #ask for user

exsist=$(grep $user /etc/passwd) #check passwd for the user given
userid=$(grep $user /etc/passwd | awk -F ":" '{print $3}') #check for userid

if [[ $exsist ]]; then #if the user exsist

	echo "$user exsist"
	if [[ $userid = [5-9][0-9][0-9] || $userid = 1000 ]]; then #check if is user id is between 500-100

	echo "$exsist"; #print the user data

	else 
		echo "$user - userid is'nt between 500-1000 "; #if not wait 5s and exit
		sleep 5; exit 1;
	fi
else  
		echo "$user don't exsist";  #if user don't exsist sleep 5s and exit
		sleep 5; exit 1;
fi
