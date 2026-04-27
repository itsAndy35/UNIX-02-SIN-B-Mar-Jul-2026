ls -a #short option
ls --all #long option
#These commands do the same thing
ls #command
- -- #options
a-all #arguments
ls -l # Long listing format (shows permissions, owner, size, and modification date)
ls -a # List all entries (includes hidden files starting with a dot .)
ls -h # Human-readable 
ls -l -ah # Combines long format, hidden files, and readable sizes (separate options)
ls -la # Same as above, but using grouped/compact options
rm -rf # Deletes a directory and all its contents recursively and by force
rm -- --rf # Deletes a file or directory literally named "--rf" (the -- stops option parsing)
mkdir -- -rf # Creates a directory literally named "-rf" (the -- prevents -rf from being read as flags)
rmdir -- -rf # Removes the directory literally named "-rf" (must be empty)
ls --help #quick summary, fits on one screen
man ls #complete manual
man git-clone #It displays the manual for the git clone command, which is used to copy a Git repository.
/--depth #Clones a repository into a newly created directory, creates remote-tracking branches for each branch in the cloned repository (visible using
       #git branch --remotes), and creates and checks out an initial branch that is forked from the cloned repository’s currently active branch.

       #After the clone, a plain git fetch without arguments will update all the remote-tracking branches, and a git pull without arguments will in
       #addition merge the remote master branch into the current master branch, if any (this is untrue when "--single-branch" is given; see below).

       #This default configuration is achieved by creating references to the remote branch heads under refs/remotes/origin and by initializing
       #remote.origin.url and remote.origin.fetch configuration variables.
chmod # Command used to change file/directory access permissions
chmod +x script.sh # Adds execute permission for everyone (User, Group, and Others)
chmod u+x script.sh # Adds execute permission ONLY for the User (the owner)
chmod o-r script.sh  # Removes read permission for Others (users not in the owner group)
chmod u+rw,go-rwx script.sh # Sets read/write for User, and removes all permissions for Group and Others
umask # Displays or sets the file mode creation mask. It "filters out" permissions for new files.
touch archivo1    # Creates an empty file named "archivo1" or updates its timestamp if it already exists.
mkdir directorio1 # Creates a new directory (folder) named "directorio1".

total 48
-rw-rw-rw-  1 codespace root      34523 Apr 27 12:06 LICENSE
-rw-rw-rw-  1 codespace root         67 Apr 27 12:06 README.md
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
-rwxrwxrwx  1 codespace root       2204 Apr 27 12:31 script.sh

umask 027 # Sets the mask to 027: 0 (Owner: no change), 2 (Group: remove Write), 7 (Others: remove All).
touch archivo2   # Creates archivo2 using the new mask (will result in more restrictive permissions).
mkdir directorio2 # Creates directorio2 using the new mask (group/others will have less access).
total 52
-rw-rw-rw-  1 codespace root      34523 Apr 27 12:06 LICENSE
-rw-rw-rw-  1 codespace root         67 Apr 27 12:06 README.md
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:32 archivo1
-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:35 archivo2
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:35 directorio2
-rwxrwxrwx  1 codespace root       2238 Apr 27 12:35 script.sh

mkdir privado  # Creates a directory named "privado".
touch secreto.txt # Creates an empty file named "secreto.txt".
sudo apt-get update # Updates the package list from repositories to get info on latest versions.
sudo apt-get upgrade # Downloads and installs available upgrades for all currently installed packages.
sudo apt-get install acl # Installs the Access Control List (ACL) utility for advanced permission management.
sudo chown -R $(whoami) . # Changes the owner of the current directory and all its contents to the current user.
sudo setfacl -bnR .  # Removes all extended ACL entries (-b) recursively (-R) and restores standard permissions.
echo "Hola" > mi_archivo  # Creates (or overwrites) "mi_archivo" with the text "Hola" inside it.
sudo useradd -m -s /usr/bin/zsh luna # Creates a new user "luna", with a home directory (-m) and zsh as their shell (-s).
sudo chown luna mi_archivo  # Changes the ownership of "mi_archivo" specifically to the user "luna".
