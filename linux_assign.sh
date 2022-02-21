#!/bin/bash
dir=/home/harshal
FILE=dailyinfo.date+"%y%m%d"
LOGFILE=wget.log
url=https://www.winni.in
cd $dir
wget $url -O $FILE -o $LOGFILE
