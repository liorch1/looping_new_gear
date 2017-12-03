#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework:

day=$(date +%A)

case $day in

	"Monday" | "Sunday")
	echo "$day - ohh, $day sucks"
	;;
	
	"Tuesday")
	echo "$day hlaf way there!"
	;;
	
	"Wednesday")
	echo "$day 2 tomorrow we will say tomorrow :)"
	;;
	
	"Thursday")
	echo "$day happy $day!"
	;;
	"Friday" | "Saturday")
	echo "$day - oh Yeaah!!"
	;;
esac	
