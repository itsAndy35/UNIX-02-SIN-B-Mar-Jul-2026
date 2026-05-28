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
