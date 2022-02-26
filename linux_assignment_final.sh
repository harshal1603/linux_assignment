#!/bin/bash
#Group 2 assignment

read -p "enter directory for downloading website" FILE
echo ""
read -p "enter directory for zip file of website" new
echo ""
read -p "enter site" site
url=https://$site

mkdir $FILE
mkdir $new
mkdir $site

#downloading the website
cd $FILE
wget $url -m 
cd $FILE/$site/
mkdir html
cd $FILE/$site/
mkdir css
cd $FILE/$site/
mkdir javas
cd $FILE/$site/
mkdir img
cd $FILE/$site/
mkdir pdf
cd $FILE/$site/
mkdir random

cd ..
pwd

cd $FILE/$site/

#sorting files in respective folders

find * -type f -print -not -type d -and -not -exec mv -t ./random/ {} .. \;
cd ./random/ 

find -name '*.css' -exec mv {} $FILE/$site/css/ \;

find -name '*.js' -exec mv {} $FILE/$site/javas/ \;

find -name '*.jpg' -exec mv {} $FILE/$site/img/ \;
find -name '*.jpeg' -exec mv {} $FILE/$site/img/ 2\;
find -name '*.png' -exec mv {} $FILE/$site/img/ \;
find -name '*.pdf' -exec mv {} $FILE/$site/pdf/ \;
find -name '*.html' -exec mv {} $FILE/$site/html/  \;
cd $FILE/$site

find $FILE/$site -empty -type d -delete 

#converting it into zip file
tar zcvf $new/site.tar.gz $FILE 2>/dev/null

#count number of html files
cd $FILE/$site/html
echo "number of html files are : $(ls | wc -l)"
echo ""

#count number of css files
cd $FILE/$site/css
echo "number of css files are : $(ls | wc -l)"
echo ""

#count number of javascript files
cd $FILE/$site/javas
echo "number of javascript files are : $(ls | wc -l)"
echo ""

#count number of pdf files
cd $FILE/$site/pdf
echo "number of pdf files are : $(ls | wc -l)"
echo ""

#count number of images
cd $FILE/$site/img
echo "number of images are : $(ls | wc -l)"
echo ""





