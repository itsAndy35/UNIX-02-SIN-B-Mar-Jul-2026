id #Displays the user and group IDs
cat /etc/passwd | head -10 #Reads the password file and shows the first 10 lines
cat /etc/group | head -10 #Reads the group file and shows the first 10 lines 
groups # Shows the names of all groups for the current user
groups $USER #Shows groups for the specific user stored in the variable
cat /etc/group | grep games #Finds the 'games' group entry in the groups file
mkdir ~/proyecto_unix/ #Creates a directory named 'proyecto_unix' in the home folder
ls -la ~/proyecto_unix/ #Lists all files in the directory with detailed info
sudo groupadd desarrolladores
sudo gorupadd -g 2000 operaciones
sudo groupadd --system servicios_web
grep "desarrolladores\|operaciones\|servicio_web" /etc/group
grep -E "desarrolladores|operaciones|servicios_web" /etc/group
groupadd --help
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs #view the range of GIDs in the system
GID_MIN                  1000
GID_MAX                 60000
#SYS_GID_MIN              101
#SYS_GID_MAX              999
SUB_GID_MIN                10000
addgroup diseno
addgroup --gid 2100 marketing
addgroup --system cache_web
grep "diseno\|marketing\|cache_web" /etc/group
