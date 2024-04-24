#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    if [ $? -eq 0 ]
    then
        echo "Installing Docker: $1"
    else 
        echo "exit status: $2"
    fi
}

if [ $USERID -eq 0 ]
then
    echo "if you are a super user"
else 
    echo "please run this script with a super user"
fi

yum install docker -y 
VALIDATE "Successfull" $?
