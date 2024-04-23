#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -e 0 ]
    then 
        echo "$2...SUCCESS"
    else
        echo "$2...FAILURE"
    fi
}

if [ $USERID -e 0 ]
then
    echo "please run this script with root user"
    exit 1
else
    echo "you are a super user"
fi

dnf install nginx -y
VALIDATE $? "Installing nginx"

dnf install mysql -y 
VALIDATE $? "Installing mysql"
