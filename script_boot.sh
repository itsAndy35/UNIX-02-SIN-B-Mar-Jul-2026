cd #Terminal tool to change current working directory
cd /home/codespace #change directory 
cd ~ # special character that Linux automatically interprets as "the current user's home".
cd $HOME #Save the path to your home folder in a variable called HOME
mkdir proyecto # Create a new folder called "project" in your current location.
cd proyecto/ #change directory to "proyecto/"
ls -lai #in-depth technical inspection of a folder.
total 12 # Total disk space in blocks used by this directory
925542 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:36 .
918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:36 ..
stat . #command line that displays detailed information and metadata about files or file systems
mkdir -p /tmp/prueba/sub1/tmp/pruebas/sub2 #It establishes the hours for access, change, modification, and creation of the new directory.
stat /tmp/prueba #Displays detailed metadata of files or file systems in the "/tmp/prueba" directory
man mkdir #standard tool for viewing embedded user manuals for commands, configuration files, system calls, and functions