#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework: 6.write a script that will receive parameter of register user, and will run until that user will login to system. 


read -p "please enter user: " user #read user name

exist=$(grep $user /etc/passwd)

until [[ $exist ]]; do	#check if the user is exist.
	read -p "$user no exist try again: " user; #if no exist ask for anthor one
	exist=$(grep $user /etc/passwd) #set exist with the new user
done

var1=$(who | grep $user) #print logedin users and filter the user name.

until [[ $var1 ]]; do #check that the user name filter found
 	var1=$(who | grep $user) ; sleep 2;   #untill the user found sleep 2 sec and check again

done

echo "user $user has loged in" #print loged in massage


