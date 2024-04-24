#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
echo "Script started executing at: $TIMESTAMP"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
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
VALIDATE  $? "Installing nginx"

dnf install mysql -y &>>$LOGFILE
VALIDATE  $? "Installing mysql"

dnf install dockerr -y &>>$LOGFILE
VALIDATE  $? "Installing docker"