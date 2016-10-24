#!/bin/bash
filename=`basename $1`

if [ "$1" = "files/" ]
then
  exit
fi

backup="backup".`date +"%y-%m-%d.%T"`
echo $backup/$filename
#mkdir -p $backup
#aws s3 cp $s3path/$filepath $backup/$filename
aws s3 cp --acl public-read files/$filename $s3path/$filename
