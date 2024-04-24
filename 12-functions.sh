#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0"

VALIDATE(){
    if [ $? -eq 0 ]
    then
        echo -e "$1...$G SUCCESS $N" 
    else 
        echo -e "$2...$R FAILURE $N" 
    fi
}

if [ $USERID -eq 0 ]
then
    echo "if you are a super user"
else 
    echo "please run this script with a super user"
fi

yum install docker -y &>> $LOGFILE
VALIDATE    "Installing Docker is"   $?
