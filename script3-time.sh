#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework:a.write a script that will request 2 parameters(read), time and command. the  script should notify that command should be executed at notified time (should work as clock alarm).
#3.b. please verify that you are recieving 2 paramenters

read -p "please input time to execut a commend in HH:MM: " time #user set time

until [[ $time = [0-9][0-9]:[0-9][0-9] ]]; do #verfiy input in format HH:MM

	read -p "please input time to execut a commend in HH:MM: " time
done

read -rp "please input a commend to be execut in the time you set: " commend #user input commend

while [ -z $commend ]; do #verfiy that the input is not empty
	
	read -rp "please input a commend to be execut in the time you set: " commend
done

until [[ $(date +%H:%M) = $time ]]; do #wait until the $time equal the clock
	sleep 10; #check every 10 sec
done

$commend #execut the commend
