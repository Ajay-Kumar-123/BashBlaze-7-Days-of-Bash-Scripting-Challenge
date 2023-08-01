#!/bin/bash

#The above line indicates the beginning of a bash script which starts with a shebang


#Task 2 - Echo a message

echo "Hello, this is Task 2 of Day 1 of this Bash Script Challenege"


#Task 3 - Declaring variables in the script

varA="Hello"
varB="Ajay"

#Task 4 - Bash script that takes two variables (numbers) as input and prints their sum using those variables.

num1=23
num2=56

sum=$(( $num1 + $num2 ))
echo "Sum of the two numbers is: $sum"


#Task 5 - Bash script that utilizes at least three different built-in variables to display relevant information.

echo "Current Bash path is: $BASH"
echo "Current Bash version is: $BASH_VERSION"
echo "Bash process id is: $$"
echo "Home Directory is: $HOME"
echo "Current working directory is: $PWD"
echo "Hostname is: $HOSTNAME"


#Task 6 - Bash script that utilizes wildcards to list all the files with a specific extension in a directory.

echo "Files having .txt extension are: "
ls *.txt

echo "Files having .docx extension are: "
ls *.docx

echo "Files with .sh extensions are: "
ls *.sh
