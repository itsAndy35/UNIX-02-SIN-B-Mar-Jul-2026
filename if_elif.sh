#!/bin/bash
USER_INPUT="${1}" #assigns the name of the running script to the user_input variable
if [[ -z "${USER_INPUT}" ]]; then #checks if the length of the user_input string is one
    echo "You must provide an argument!" #prints an error message indicating an argument is needed
    exit 1 #terminates the script immediately with an error status code of 1
fi #closes the first if statement block

if [[ -f "${USER_INPUT}" ]]; then #checks if the value stored in user_input exists and is a regular file
    echo "${USER_INPUT} is a file." #outputs a message confirming that the input is a file

elif [[ -d "${USER_INPUT}" ]]; then #checks if the value stored in user_input exists and is a directory
    echo "${USER_INPUT} is a directory." #outputs a message confirming that the input is a directory
else #provides a fallback action if the input is neither a file nor a directory
echo "${USER_INPUT} is not a file or a directory." #outputs a message stating it is neither
fi