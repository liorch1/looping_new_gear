#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework: 5.create a script that will receive file name: if it will be regular file, then print out to its data, if it will be folder then print out files in it


read -rp "please enter file name: " name #read file name
var1=$(find / -name $name 2> /dev/null) # find the file name in the system. send error to null

if [[ -f $var1 ]]; then #if the file is regular file
	cat $var1; 	#print its data
elif [[ -d $var1 ]]; then #if the file is directory
	ls $var1; 	#print the files in it.
else 			#if didnt find print "there is no file"
	echo -e "there is no such a file: \"$name\""
fi


