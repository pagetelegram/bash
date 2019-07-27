#! /bin/bash
#Usage ./j2asc infile.jpg outfile.jpg

echo "converting $1 to $2 at width $3"
jp2a --chars="1234567890" --width=$3 -i  $1 --output=tmp.txt
convert -font Courier -pointsize 6 tmp.txt $2
