id #View the primary group
# Only the name of the primary group
id -gn 
# Create a file and see which group it inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
# The group is the user's primary group

#view actual group
id -gn
echo "Grupo actual: $(id -gn)"
#create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt

#change the group 'desarrolladores'
newgrp desarrolladores
#verify that the active group changed
id -gn
echo "Nuevo grupo activo: $(id -gn)"
#Create file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
#The group now is 'desarrolladores'
#Create directory
mkdir -p ~/proyecto_dev/src
# proyecto_dev/ has the group 'desarrolladores'
#Exit the subshell of newgrp
exit
#Verify that we're back at the original group
id -gn
echo "Grupo restaurado: $(id -gn)"
#Compare the 2 files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt
#newgrp creates a subshell - this is demonstrable
echo "PID del shell actual: $$"
newgrp desarrolladores
echo "PID dentro de newgrp: $$"
# The PID is diferent - is a son's process

#Create a group with a password
groupadd grupo_restringido
gpasswd grupo_restringido
#The sistem will ask a password for the group
#A user that's not from the group can join temporarly if it knows the password
newgrp grupo_restringido
#The sistem will ask the password for the group
#If the password is correct, it will join temporarly
id -gn
exit #When exit, losses the temporal membership