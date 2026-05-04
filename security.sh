id #Displays the user and group IDs
cat /etc/passwd | head -10 #Reads the password file and shows the first 10 lines
cat /etc/group | head -10 #Reads the group file and shows the first 10 lines 
groups # Shows the names of all groups for the current user
groups $USER #Shows groups for the specific user stored in the variable
