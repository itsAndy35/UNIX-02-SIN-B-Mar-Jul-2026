gpg --full-generate-key #generate public key
gpg --armor --export #Export the public key in a human-readable format
gpg --list-keys #displays the list of keys
gpg --import bm_llave_publica.asc #My partner's key matters
echo "mensaje" > doc_no_cifrado.txt #We created the document with the unencrypted message.
gpg --output doc_cifrado.txt --encrypt --recipient XXXXXXX doc_no_cifrado.txt #We use the hash to encrypt the message
gpg --decrypt bm_doc_cifrado.txt #decipher my partner's document
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #We signed the unencrypted document.
gpg --verify bm_doc_no_cifrado_firmado.txt #We verified the signature
gpg --edit-key B71FA457F258D #edit my colleague's key
gpg --verify bm_doc_no_cifrado_firmado.txt #We verified the new level of confidence in the document
gpg --output doc_no_firmado_binario.txt --sign doc_no_cifrado.txt #binary document signature
gpg --verify bm_doc_no_cifrado_firmado_binario.txt #verify the signature in binary
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #We separated the signature from the document.
gpg --verify bm_firma_separada_doc_no_cifrado.sig bm_doc_no_cifrado.txt #We separated the signature from our colleague's document.
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient A021DAD50ABBF516 doc_no_cifrado.txt #sign and encrypt a document
