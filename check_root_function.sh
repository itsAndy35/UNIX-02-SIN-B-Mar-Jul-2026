#!/bin/bash
check_if_root(){ # defines a function named check_if_root to verify if the user is root
    if [[ "${EUID}" -eq "0" ]]; then # checks if the effective user id (euid) is equal to 0 (root)
    return 0 # returns a success exit status of 0 if the user is root
else # executes if the euid is not 0
    return 1 # returns a failure exit status of 1 if the user is not root
fi # closes the function's conditional block
} # ends the function definition

if check_if_root; then # calls the function and checks its exit status
    echo "User is root!" # prints this message if the function returned 0
else # runs this block if the function returned 1
    echo "User is not root!" # prints this message if the condition was false
fi # closes the main if-then-else conditional block

adduser andy_g  # creates a new user account named andy_g on the system
su - andy_g  # switches the current user session to the andy_g account and loads its environment
exit #logout user