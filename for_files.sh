#!/usr/bin/env bash

for file in example_file*; do #Starts a loop for every file that has in it's name "example file"
 if [[ "${file}" == "example_file1" ]]; then #Starts an if to compare if any file is named "example_file1"
    echo "Skipping the first file" #If the command before results in true prints the text "Skipping the first file"
    continue #Continues the loop even if it's true
    fi #Ends if loop
    echo "${RANDOM}" > "${file}" #Sends a random number to every file that came from the loop except example_file1
done #Finishes the for loop