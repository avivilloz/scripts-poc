#!/bin/bash

NAME=$1
BOOLEAN_PARAM=$2
SELECT_PARAM=$3


print_separator() {
    echo "----------------------------------------"
}

print_separator
echo "Hello, $NAME!"
echo "Bollean Param, $BOOLEAN_PARAM!"
echo "Select Param, $SELECT_PARAM!"
print_separator
