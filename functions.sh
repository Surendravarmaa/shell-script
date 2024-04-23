#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo "$0 | cut -d "." -f1")
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root user"
    exit 1
else
    echo "you are a super user"
fi

dnf install nginx -y &>>$LOGFILE
VALIDATE $? "Installing nginx"

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"
