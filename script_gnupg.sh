gpg --full-generate-key #generar llave publica
gpg --armor --export #Export the public key in a human-readable format
gpg --list-keys #lista de llaves
gpg --import bm_llave_publica.asc #importar la llave de mi compa
echo "mensaje" > doc_no_cifrado.txt #creamos el documento con el mensaje no cifrado