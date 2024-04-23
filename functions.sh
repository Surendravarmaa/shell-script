#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "What are you doing : $1"
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root user"
    exit 1
else
    echo "you are a super user"
fi

dnf install nginx -y
VALIDATE  "Installing nginx"

dnf install mysql -y 
VALIDATE  "Installing mysql"
