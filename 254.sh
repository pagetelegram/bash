#!/bin/bash
cat $1 | egrep -o '(.){1,254}' > $1.dat
