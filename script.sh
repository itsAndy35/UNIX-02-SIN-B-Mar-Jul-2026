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