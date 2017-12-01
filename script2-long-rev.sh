#!/bin/bash

#name: lior cohen
#date: 30/11/2017
#homework: 2.write a script that will receive long sentance and will print it in reverse.

read -rp "please enter some words: " words #read sentance

echo $words | rev #print the sentance in reverce
