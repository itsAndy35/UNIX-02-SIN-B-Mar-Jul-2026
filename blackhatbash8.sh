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

sed 's/ //g' log.txt > newlog1.txt
sed '1d' newlog1.txt
