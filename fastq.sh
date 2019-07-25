#!/bin/bash
awk 'NR%4==2' $1 > 90.a
awk 'NR%4==0' $1 > 90.q
cat 90.q | grep -n [\"\'\^\$\#\@\!\%\&\*\(\)\+\] > 90.v
awk 'NR%2==0' $1 > 90.p
cat 90.q | grep  -nv [\"\'\^\$\#\@\!\%\&\*\(\)\+\] > 90.n
cat 90.n | cut -d':' -f1 > 90.m
cat 90.v | cut -d':' -f1 > 90.w
awk 'FNR == NR { h[$1]; next } !(FNR in h)' 90.w 90.a > b.$1
