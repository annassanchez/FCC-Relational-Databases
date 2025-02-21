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
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# TEXT="The next number is, "
# echo $NUMBER
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# TEXT="The next number is, "
# if (( NUMBER <= 15 ))
# then
#   echo $TEXT B:$NUMBER
# fi
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# TEXT="The next number is, "
# if (( NUMBER <= 15 ))
# then
#   echo $TEXT B:$NUMBER
# elif [[ $NUMBER -le 30 ]]
# then
#   echo $TEXT I:$NUMBER
# fi
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# TEXT="The next number is, "
# if (( NUMBER <= 15 ))
# then
#   echo $TEXT B:$NUMBER
# elif [[ $NUMBER -le 30 ]]
# then
#   echo $TEXT I:$NUMBER
# elif (( NUMBER < 46 ))
# then
#   echo $TEXT N:$NUMBER
# fi
# echo -e "\n~~ Bingo Number Generator ~~\n"
# NUMBER=$(( RANDOM % 75 + 1 ))
# TEXT="The next number is, "
# if (( NUMBER <= 15 ))
# then
#   echo $TEXT B:$NUMBER
# elif [[ $NUMBER -le 30 ]]
# then
#   echo $TEXT I:$NUMBER
# elif (( NUMBER < 46 ))
# then
#   echo $TEXT N:$NUMBER
#   elif [[ $NUMBER -lt 61 ]]
# then
#   echo $TEXT G:$NUMBER
# fi
echo -e "\n~~ Bingo Number Generator ~~\n"
NUMBER=$(( RANDOM % 75 + 1 ))
TEXT="The next number is, "
if (( NUMBER <= 15 ))
then
  echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then
  echo $TEXT I:$NUMBER
elif (( NUMBER < 46 ))
then
  echo $TEXT N:$NUMBER
  elif [[ $NUMBER -lt 61 ]]
then
  echo $TEXT G:$NUMBER
else
    echo $TEXT O:$NUMBER
fi