#!/bin/bash 
SIGNAL_TO_STOP_FILE="stoploop"  # assigns the name of the file to monitor to a variable
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do  # starts a loop that continues as long as the file does not exist
    echo "the file ${SIGNAL_TO_STOP_FILE} does not yet exist..."  # prints a status message
    echo "checking again in 2 seconds..."  # informs the user about the next check interval
    sleep 2  # pauses the script execution for 2 seconds
done  # marks the end of the while loop block

echo "file was found! exiting..."  # prints a success message once the file is detected and the loop terminates