#!/bin/bash

# Input from user
echo "Please enter the character:"
read ch 

# if condition to check wheather entered
# is upper case, lower case or digit
if [ $ch == [A-Z] ]
then 
echo "Upper Case"
elif [ $ch == [a-z] ]
then
echo "Lower Case"
elif [ $ch == [0-9] ]
then
echo "Digit"
fi


# if condition to check character
# entered is consonant or vowel.

if [ $ch == [AEIOUaeiou] ]
then
echo "Vowel"
else 
echo "Consonant"
fi