#!/bin/bash

echo "Current working directory : $PWD"
echo "All variables : $@"
echo "Number of variables passed: $#"
echo "Script name : $0"
echo "Prsent working directory : $PWD"
echo "Which user is running this script : $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID of the current shell script : $$"
sleep 10 &
echo "Process ID of the last background command : $!"

