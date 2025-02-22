#!/bin/bash
#Program to tell a persons fortune
# echo -e "\n~~ Fortune Teller ~~\n"
# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# echo ${RESPONSES[5]}
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# GET_FORTUNE() {}
# echo -e "\n~~ Fortune Teller ~~\n"
# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# echo ${RESPONSES[5]}
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# GET_FORTUNE() {
#   echo Ask a yes or no question:
# }
# GET_FORTUNE
# echo -e "\n~~ Fortune Teller ~~\n"
# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# echo ${RESPONSES[5]}
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# GET_FORTUNE() {
#   echo Ask a yes or no question:
# }
# GET_FORTUNE
# read QUESTION
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#   echo "Ask a yes or no question:"
# }

# read QUESTION
# until [[ $QUESTION == "test?" ]]
# do
#   echo $QUESTION
#   GET_FORTUNE
  
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#   echo "Ask a yes or no question:"
# }

# until [[ $QUESTION =~ \?$ ]]
# do
#   GET_FORTUNE
#   read QUESTION
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#     if [[ ! $1 ]]
#     then
#         echo Ask a yes or no question:
#     fi

#     read QUESTION
# }

# until [[ $QUESTION =~ \?$ ]]
# do
#   GET_FORTUNE
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#     if [[ ! $1 ]]
#     then
#         echo Ask a yes or no question:
#     else
#         echo Try again. Make sure it ends with a question mark:
#     fi

#     read QUESTION
# }

# until [[ $QUESTION =~ \?$ ]]
# do
#   GET_FORTUNE
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#     if [[ ! $1 ]]
#     then
#         echo Ask a yes or no question:
#     else
#         echo Try again. Make sure it ends with a question mark:
#     fi

#     read QUESTION
# }

# until [[ $QUESTION =~ \?$ ]]
# do
#   GET_FORTUNE again
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
# echo -e "\n~~ Fortune Teller ~~\n"

# GET_FORTUNE() {
#     if [[ ! $1 ]]
#     then
#         echo Ask a yes or no question:
#     else
#         echo Try again. Make sure it ends with a question mark:
#     fi

#     read QUESTION
# }

# GET_FORTUNE

# until [[ $QUESTION =~ \?$ ]]
# do
#   GET_FORTUNE again
# done

# RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# N=$(( RANDOM % 6 ))
# echo ${RESPONSES[$N]}
echo -e "\n~~ Fortune Teller ~~\n"

GET_FORTUNE() {
    if [[ ! $1 ]]
    then
        echo Ask a yes or no question:
    else
        echo Try again. Make sure it ends with a question mark:
    fi

    read QUESTION
}

GET_FORTUNE

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))
echo -e "\n${RESPONSES[$N]}"