#!/bin/bash
# This script will send the sleep command to the background.
set -x
echo "Sleeping for 10 seconds..."
sleep 10 &

# Creates a file
echo "Creating the file test123"
touch test123

# Deletes a file
echo "Deleting the file test123"
rm test123
set +x