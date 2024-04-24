#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

echo "Script started executing at: $TIMESTAMP"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -eq 0 ]
then
    echo "you are a super user"
else 
    echo "please run this script with a super user"
    exit 1
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo -e "$2...$G SUCCESS $N" 
    else 
        echo -e "$2...$R FAILURE $N" 
    fi
}

yum install docker -y &>> $LOGFILE
VALIDATE $? "Installing Docker is" 

dnf install mysqld-sever -y &>> $LOGFILE
VALIDATE $? "Installing Mysql is" 


