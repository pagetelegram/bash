#!/bin/bash
cat $1 | grep "Ballot processing stopped" > file.csv
cat file.csv | grep -o [0-2][0-9]:[0-5][0-9]:[0-5][0-9] >> file.d
sed s/[:]//g file.d > file_final.dat
