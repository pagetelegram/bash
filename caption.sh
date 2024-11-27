#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com
# Author: Mike

# absolute path to image folder
FOLDER="/home/pagetelegram/images/sm"

# max height
WIDTH=1920

# max width
HEIGHT=1280

#resize png or jpg to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.JPG' -o -iname '*.PNG' -exec convert \{} -verbose 
#-bordercolor black -border 1 -bordercolor white -border 1 +clone -background black -shadow 70x9+10+10 +swap -background white -layers merge -gravity northwest -splice 40x40 -gravity southeast -splice 20x30 +repage -font Courier -pointsize 14 -fill grey50 -gravity southwest -annotate +50+12 "Photography by Jason Page: Art for the Homeless Exhibit." -font Courier -pointsize 14 -fill grey50 -gravity southeast -annotate +48+12 "https://3y3.in" 
#-resize $WIDTHx$HEIGHT\> \{} \;

#resize png to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize jpg only to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.JPG' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;
find ${FOLDER} -iname '*.JPG' -exec convert \{} -verbose -bordercolor black -border 1 -bordercolor white -border 1 +clone -background white -layers merge -gravity northwest -splice 40x40 -gravity southeast -splice 20x30 +repage -font Courier -pointsize 14 -fill grey50 -gravity southwest -annotate +50+12 "Photography by Jason Page: Art for the Homeless Exhibit." -font Courier -pointsize 14 -fill grey50 -gravity southeast -annotate +48+12 "https://3y3.in"\> \{} \;

#find ${FOLDER} -iname '*.JPG' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT -caption "Art for the Homeless by Jason Page, 2020-02-09, https://3y3.in" -resize \ \> \{} \;
# -background #0008 -fill white -pointsize 25 -size 801x caption:'2020-02-09 Art for the Homeless, Photo by Jason Page, https://3y3.in' miff:- | composite -gravity south -geometry +10+5 \> \{} \;


#( +clone -fill gray -draw 'color 0,0 reset' -resize x40! -fill white -pointsize 14 -gravity center -annotate 0 'Art for the Homeless at Lincoln Park Community Shelter' -gravity east -annotate +10+0 'Jason Page 3y3.in' -gravity west -annotate 0 '2020-02-09' -geometry +2.5+0 -composite \) \ \> \{} \;

# convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

# alternative
#mogrify -path ${FOLDER} -resize ${WIDTH}x${HEIGHT}% *.png -verbose
