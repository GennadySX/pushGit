#!/usr/bin/env bash

d=`date +"%d-%m"`
h=`date +"%H"`

c="a";
if [ h > 12 ]  && [ h > 7 ]; then c="M";
elif [ h > 12 ]  && [ h < 17 ]; then c='D';
elif [ h > 17 ]  && [ h < 23 ]; then c='E';
elif [ h > 23 ]  || [ h < 7 ]; then c='N';
fi
#read -p " Enter project name: " name

read -p " Enter commit message: " mess


git add .

git commit -m "pushGit  --$d  -$c  :$mess"


git push -u origin master
