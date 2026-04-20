 24  git commit -m "fix problema 5: SUID activado en galaxia.sh"
   25  chmod +t /tmp/nebula_zone
   26  mkdir /tmp/nebula_zone
   27  chmod +t /tmp/nebula_zone
   28  git add .
   29  git commit -m "fix problema 6: sticky bit en /tmp/nebula_zone"
   30  gpg --full-generate-key
   31  gpg encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   32  gpg --encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   33  gpg --local-user aurora@nebula.lab --clearsign estrella.conf
   34  history 