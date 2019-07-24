#!/bin/bash
# awk '{print>"line-"NR%$1}' $2 > $3
echo %2, even or odd etc, input file, output file
awk 'NR%$1==$2' $3 > $4
