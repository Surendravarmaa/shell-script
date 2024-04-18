#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "please run this command with root access"
    exit 1
else 
    echo "you are a super user"
fi 

dnf install nginx -y

if [ $? -ne 0 ]
then 
    echo "my nginx server is failure"
    exit 1
else
    echo "my nginx server is success"
fi





