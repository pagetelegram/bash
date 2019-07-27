#!/bin/bash
# cat $1 | hexdump| cut -c9- | awk -Wposix '{printf(%dn,0x )}' | sed 's/0//' > $1.dec.dat
cat /bin/* > ~/$1
cat ~/$1 | hexdump| cut -c9- | awk -Wposix '{printf("%d\n","0x" $1)}' | sed 's/0//' | sed '/^$/d' > ~/$1.dec.dat
