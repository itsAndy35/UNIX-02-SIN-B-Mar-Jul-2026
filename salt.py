import crypt
password = 'micontraseña123'
salt1 = crypt.mksalt(crypt.METHOD_SHA512)
salt2 = crypt.mksalt(crypt.METHOD_SHA512)
hash1 = crypt.crypt(password, salt1)
hash2 = crypt.crypt(password, salt2)
print ('Salt1:', salt1)
print ('Hash1:', hash1[:50])
print()
print('Salt2:', salt2)
print('Hash:', hash2[:50])
print()
print('son iguales?', hash1 == hash2)