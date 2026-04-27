  1  git fetch upstream
    2  git checkout -b eval_p2_1_v1
    3  git push -u origin eval p2_1_v1
    4  cd nebula/
    5  mkdir registros
    6  mv registros bitacoras
    7  mkdir borradores
    8  git add.
    9  git add .
   10  git commit -m "fix problema 1: estructura de directorios corregida"
   11  mv cosmos.txt bitacoras/
   12  mv estrella.bak estrella.conf
   13  git commit -m "fix problema 2: archivos movidos y renombrados"
   14  git add .
   15  git commit -m "fix problema 2: archivos movidos y renombrados"
   16  chmod 640 bitacoras/cosmos.txt
   17  git add .
   18  git commit -m "fix problema 3: permisos numericos 640 en cosmos.txt"
   19  chmod u+x galaxia.sh
   20  chmod o-w estrella.conf
   21  git add .
   22  git commit -m "fix problema 4: permisos simbolicos corregidos"
   23  chmod u+s galaxia.sh
   24  ls -l
   25  ls -l galaxia.sh
   26  git add .
   27  git commit -m "fix problema 5: SUID activado en galaxia.sh"
   28  chmod +t /tmp/nebula_zone
   29  mkdir /tmp/nebula_zone
   30  chmod +t /tmp/nebula_zone
   31  ls -ld /tmp/nebula_zone
   32  git add .
   33  git commit -m "fix problema 6: sticky bit en /tmp/nebula_zone"
   34  gpg --ful-generate-key
   35  gpg --full-generate-key
   36  gpg --encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   37  git add .
   38  git commit -m "fix problema 7: llave GPG generada y cosmos.txt cifrado"
   39  gpg --local-user aurora@nebula.lab --clearsign estrella.conf
   40  gpg --verify galaxia.sh.sig galaxia.sh
   41  gpg --local-user aurora@nebula.lab --clearsign estrella.conf
   42  gpg --verify galaxia.sh.sig galaxia.sh
   43  gpg --verify nebula/galaxia.sh.sig galaxia.sh
   44  gpg --verify nebula/galaxia.sh.sig nebula/galaxia.sh
   45  gpg --local-user aurora@nebula.lab --output galaxia.sh.sig --detach-sign galaxia.sh 
   46  gpg --verify nebula/galaxia.sh.sig nebula/galaxia.sh
   47  gpg --verify galaxia.sh.sig galaxia.sh
   48  git add .
   49  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   50  history