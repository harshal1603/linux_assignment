#!/bin/bash
#dir=/home/harshal/website
new=/home/harshal/website-zip
read -p "enter directory" FILE
echo ""
read -p "enter site" site
url=https://$site
#FILE=/home/harshal/website
#LOGFILE=wget.log
#url=https://www.winni.in
cd $FILE
wget $url -m
tar zcvf $new/site.tar.gz $FILE 2>/dev/null
cd $FILE/$site/
mkdir html
cd $FILE/$site/
mkdir css
cd $FILE/$site/
mkdir javas
cd $FILE/$site/
mkdir img

cd ..
pwd
#mv subfolders.sh /home/harshal/website/$site/
cd $FILE/$site/
#chmod +x subfolders.sh
#./subfolders.sh

find * -type f -print -not -type d -and -not  -exec mv -t ./html/ {} .. \;
cd ./html/
#find -maxdepth 2 -iname '*.css' -exec mv ./css/ {} .. \;
find -name '*.css' -exec mv {} /home/harshal/website/newpoonabakery.com/css/ \;

find -name '*.js' -exec mv {} /home/harshal/website/newpoonabakery.com/javas/ \;

find -name '*.jpg' -exec mv {} /home/harshal/website/newpoonabakery.com/img/ \;
find -name '*.jpeg' -exec mv {} /home/harshal/website/newpoonabakery.com/img/ \;
find -name '*.png' -exec mv {} /home/harshal/website/newpoonabakery.com/img/ \;
cd /home/harshal/website/newpoonabakery.com
rmdir **/*/




