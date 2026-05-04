ls #list files
ls Documents #List the contents of the "Documents" folder
aptitude moo #displays a humorous message denying the existence of an Easter egg
ls -l #List files in long format with technical details
ls -r #List contents in reverse alphabetical order
ls -rl #List in long format and in reverse order
aptitude -v moo #Insists on seeing the Easter egg; the system responds that there isn't one
pwd #Print the full path of the current working directory
cd #change directory
cd Documents #Change the current directory to the "Documents" folder
cd / #Change to the system root directory
cd /home/sysadmin #Change to the "sysadmin" user's directory
ls -l /var/log #List system log files in long format with details
ls -lt /var/log #List log files sorted by modification time, newest first
ls -l -s /var/log #List logs with details and show the size in blocks
ls -lSr /var/log #List logs by size in ascending order
ls -r /var/log #List /var/log contents in reverse alphabetical order
su  - o sudo -i #Log in as superuser (root) loading its full environment
exit #Closes the current session or exits the terminal
sl #Displays a steam locomotive animation in the terminal
sudo sl #Runs the steam locomotive animation with superuser privileges
cd ~/Documents #Change to the "Documents" directory within the user's home folder
ls -l hello.sh  #Show details (permissions, owner, size) of the "hello.sh" file
./hello.sh #Execute the script named "hello.sh" in the current directory
chmod u+x hello.sh #Grant execution permission to the owner of the "hello.sh" file
sudo chown root hello.sh  #Change the owner of the "hello.sh" file to the root user