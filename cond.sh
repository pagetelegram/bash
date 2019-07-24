#!/bin/bash
### file        replace spaces with enter  remove spaces  remove -     remove first # remove periods
cat $1 | sed -E -e 's/[[:blank:]]+/\n/g' | sed 's/ //g' | sed 's/-//g' | sed 's/^.//' | sed -e 's/\.//g' > $1.dat
# tail -n +$2 $1.dat > _$1.dat
