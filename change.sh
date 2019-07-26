#!/bin/bash
cp $1 $1.bak
cat $1 | sed -i 's/'$2'/'$3'/g' $1
#cat $1.cng | sed -i 's/T/2/g' $1.cng
#cat $1.cng | sed -i 's/G/3/g' $1.cng
#cat $1.cng | sed -i 's/C/4/g' $1.cng
