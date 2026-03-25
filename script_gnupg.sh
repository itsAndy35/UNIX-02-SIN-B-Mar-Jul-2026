gpg --full-generate-key #generar llave publica
gpg --armor --export #Export the public key in a human-readable format
gpg --list-keys #lista de llaves
gpg --import bm_llave_publica.asc #importar la llave de mi compa
echo "mensaje" > doc_no_cifrado.txt #creamos el documento con el mensaje no cifrado
gpg --output doc_cifrado.txt --encrypt --recipient XXXXXXX doc_no_cifrado.txt #We use the hash to encrypt the message
gpg --decrypt bm_doc_cifrado.txt #decipher my partner's document
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #documento firmado
gpg --verify bm_doc_no_cifrado_firmado.txt #We verified the signature
gpg --edit-key B71FA457F258D #editar la llave de mi compa;ero
gpg --verify bm_doc_no_cifrado_firmado.txt #verificamos el nuevo nivel de confianza al documento
gpg --output doc_no_firmado_binario.txt --sign doc_no_cifrado.txt #firma de documento en binario
gpg --verify bm_doc_no_cifrado_firmado_binario.txt #verificamos la firma en binario
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #separamos la firma del documento
gpg --verify bm_firma_separada_doc_no_cifrado.sig bm_doc_no_cifrado.txt #separamos la firma separada del documento de neustro compa;ero
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient A021DAD50ABBF516 doc_no_cifrado.txt #firmar y cifrar un documento
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt bm_doc_cifrado_y_firmado.txt #validar firma y descifrar