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
# GID_MIN                  1000
# GID_MAX                 60000
# SYS_GID_MIN              101
# #SYS_GID_MAX              999
# #SUB_GID_MIN                10000

#create groups with addgroup
sudo addgroup diseno
sudo addgroup --gid 2100 marketing
sudo addgroup --system cache_web
#verify
grep "diseno\|marketing\|cache_web" /etc/group
#view in wich groups is the actual user
groups
id
#add the user to a group whit usermod
sudo usermod -aG desarrolladores $USER
sudo usermod -aG diseno $USER
#using $ gave a problems because it didn't have anything. We can use root or (whoami)
sudo usermod -aG desarrolladores root
sudo usermod -aG diseno root
sudo usermod -aG desarrolladores
#verify
grep -E "desarrolladores|operaciones|servicios_web" /etc/group
#add user to group with adduser
sudo adduser root marketing
#verify
id root
#create a temporal group for the demo
sudo addgroup grupo_temporal
sudo usermod -aG grupo_temporal root
id root  
#now the error: usermod without -a
sudo usermod -G desarrolladores root #this delete every secundary groups
id root #lost all the other groups
#restore
sudo usermod -aG diseno,marketing,grupo_temporal root
id root #restored 
#prepare the practice scene
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}
touch ~/lab_chgrp/proyectos/app.py
touch ~/lab_chgrp/proyectos/config.json
touch ~/lab_chgrp/proyectos/informe.txt
touch ~/lab_chgrp/proyectos/deploy.sh
#view initial stat--everyone has the user group
ls -la ~/lab_chgrp/proyectos/
ls -la ~/lab_chgrp/reportes/
#change the group of a file
sudo chgrp desarrolladores ~/lab_chgrp/proyectos/app.py
ls -la ~/lab_chgrp/proyectos/
#change group of multiple files
sudo chgrp diseno \ 
~/lab_chgrp/proyectos/config.json \ 
~/lab_chgrp/reportes/informe.txt
#change recursivly everthing in one directory
sudo chgrp -R desarrolladores ~/lab_chgrp/scripts/
ls -laR ~/lab_chgrp/scripts/

#verbose to view the change
sudo chgrp -Rv diseno ~/lab_chgrp/reportes/
