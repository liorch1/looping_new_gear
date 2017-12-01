#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework:4.create a script that will check all possible files in your home folder, and if any of those won't belong to your user, it should be changed with "chown" command.


for i in $(ls $HOME); do #check list of files in home directory (ls -a will change ".." directory)
	if [[ -O $HOME/$i ]]; then #if I own the files print "the files in mine"
	echo "$i is yours";

else				#if not change ownership to me.
	sudo chown $USER $HOME/$i && echo "$HOME/$i changed owner" || echo "$HOME/$i faild to change owner";

fi	

done
