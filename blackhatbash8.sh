#!/usr/bin/bash

awk '{print $1}' log.txt

awk '{print $1}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt

awk '{print $1,$NF}' log.txt
awk '{print $NF}' log.txt

awk -F',' '{print $1}' example_csv.txt
awk -F',' '{print $1, $2}' example_csv.txt

awk 'NR < 10' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep -c "Mozilla" log.txt
grep -c "Godzilla" newlog.txt

catnewlog.txt | grep "Godzilla" 
sed 's/ //g' log.txt > newlog1.txt
sed '1d' newlog1.txt > newlogd.txt
sed '$d' newlog1.txt
sed '5,7d' newlog1.txt
sed -n '2,15 p' log.txt
sed -i '1d' log.txt
sleep 100 & 
ps -ef | grep sleep
#RESULT
# root          1       0  0 12:11 ?        00:00:00 /bin/sh -c echo container started trap "exit 0" 15  exec "$@" while sleep 1 & wait $!; do :; done - # main container entrypoint process (pid 1) running a continuous shell loop to keep the container alive.
# root      24559     485  0 13:10 pts/1    00:00:00 sleep 100 # the 100-second background process you started earlier from your terminal session (parent pid 485).
# root      24635       1  0 13:11 ?        00:00:00 sleep 1 # a temporary sleep command spawned directly by the main container loop (parent pid 1).
# root      24645   24641  0 13:11 ?        00:00:00 sleep 1 # another temporary sleep command, but spawned by a different parent process (pid 24641).
# root      24651     485  0 13:11 pts/1    00:00:00 grep --color=auto slee # the grep command you just executed in your terminal to search for these exact processes.

jobs
# [1]+  Hecho                      sleep 10 # background job 1 has successfully finished (done) executing the 10-second sleep command.

fg %1
# sleep 100 # the command to pause the terminal for 100 seconds, running in the foreground.
# [1]+  Detenido                  sleep 100 # job 1 has been suspended (stopped), usually by pressing ctrl+z, pausing the process until it is resumed or killed.

bg %1
# [1]+ sleep 100 &                           # job 1 has been resumed and is now running in the background (typically the output of the 'bg' command).
# [1]-  Hecho                      sleep 100 # job 1 has successfully finished (done); the minus sign indicates it was the second most recently managed background job.

chmod +x excercise2.sh
nohup ./excercise2.sh &
# [1] 30433 # background job 1 has started and was assigned the process id (pid) 30433.
# nohup: se descarta la entrada y se añade la salida a 'nohup.out' # nohup informs you that standard input is ignored and all output is being appended to a file named 'nohup.out' so it can keep running even if you close the terminal.