#!/bin/bash

# Using while loop is easy, check it out
#
# while [ condition ]; do
#   // commands
# done
# Example

counter=0

while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done

