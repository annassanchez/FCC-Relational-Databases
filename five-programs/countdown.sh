#!/bin/bash
#Program that counts down to zero from a given argument
#echo $*
#echo $1
#if [[ $1 == arg1 ]]
#then
#  echo true
#fi
#if [[ $1 == arg1 ]]
#then
#  echo true
#else
#    echo false
#fi
if [[ $1 -lt 5 ]]
then
  echo true
else
    echo false
fi