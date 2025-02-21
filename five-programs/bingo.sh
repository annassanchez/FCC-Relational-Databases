#!/bin/bash
#Bingo Number Generator
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=5
# echo $NUMBER
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$RANDOM
# echo $NUMBER
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$RANDOM%75
# echo $NUMBER
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# echo $NUMBER
echo -e "\n~~ Bingo Number Generator ~~\n"
NUMBER=$(( RANDOM % 75 + 1 ))
TEXT="The next number is, "
echo $NUMBER