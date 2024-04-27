#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G source directory exists $N"
else 
    echo -e "$R make sure $SOURCE_DIRECTORY exists $N"
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.logs" -mtime +14)

echo "files to delete: $FILES"

