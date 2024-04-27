#!/bin/bash

set -e 

failure(){
    echo "failed at $1 : $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else 
    echo "you are a super user."
fi

dnf install nginxx -y 

