#!/bin/bash
echo "What is your age?"
read AGE

if [ "$AGE" -ge 18 ]; then
    echo "Well, you're an adult"
else
    echo "Hah, you still a teenager"
fi

# For strings:
# = verifies equality
# != verifies if are different
# -n verifies if it's not empty
# -z verifies if it's empty
# Example:

echo "Type your name:"
read name

if [ -z "$name" ]; then
    echo "You're stupid"
else
    echo "Hello, $name"
fi

# For numbers:
# -eq "equals to"
# -ne "not equals to"
# -lt "lesser than"
# -le "lesser or equals than"
# -gt "greater than"
# -ge "greater or equals than"

echo "Type a random number:"
read num

if [ "$num" -lt 0 ]; then
    echo "The number is negative"
elif [ "$num" -eq 0 ]; then
    echo "The number is 0"
else
    echo "The number is positive"
fi

# Logical operators && and ||

if [ "$num" -ge 10 ] && [ "$num" -le 20 ]; then
    echo "Number is between 10 and 20"
fi

# Files logical operations
# -e (verifies if file exists)
# -d (verifies if it`s a folder)
# -f (verifiees if it`s a regular file (not a dir, for ex)
# -r (verifies if the file has reading permissions)
# -w (verifies if the file has writing permissions)
# -x (verifies if the file is executable)
# Example:

file_name="/etc/"

if [ -e "$file_name" ]; then
    echo "Yep, that file exists"
fi

echo "Type some dir name here"
read dir_name

if [ -d "$dir_name" ]; then
    echo "Yep, it's a dir"
fi

