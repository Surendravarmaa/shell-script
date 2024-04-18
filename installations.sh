#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0]
then
    echo "please run this command with root access"
else 
    echo "you are a super user"
fi 

dnf install nginx -y