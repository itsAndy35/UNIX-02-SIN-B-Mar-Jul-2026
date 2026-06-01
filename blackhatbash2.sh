#!/bin/bash
# All this script does is create a directory, create a file
set -x
mkdir mydirectory
touch mydirectory/myfile
ls -l mydirectory
set +x
#+ set -x
#+ mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:27 myfile
#+ set +x