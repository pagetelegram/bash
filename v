#!/bin/bash

curl https://labs.bible.org/api/?passage=random -o ~/bible.txt
clear
echo
cat ~/bible.txt
echo
