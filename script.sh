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