#!/bin/bash
#dir=/home/harshal/website
#new=/home/harshal/website-zip
read -p "enter directory" new
echo ""
read -p "enter url" url
FILE=/home/harshal/website/
#LOGFILE=wget.log
#url=https://www.winni.in
cd $FILE
wget $url -m
tar zcvf $new/site.tar.gz $FILE 2>/dev/null




