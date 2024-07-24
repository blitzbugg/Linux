#!/bin/bash

# Function to check if two strings are equal
check_strings_equal() {
    if [ "$1" == "$2" ]; then
        echo "The strings are equal."
    else
        echo "The strings are not equal."
    fi
}

# Function to check if the length of a string is zero
check_length_zero() {
    if [ -z "$1" ]; then
        echo "The string length is zero."
    else
        echo "The string length is not zero."
    fi
}

# Function to concatenate two strings
concatenate_strings() {
    echo "Concatenated string: $1$2"
}

# Prompt user for two strings
echo "Enter the first string:"
read str1

echo "Enter the second string:"
read str2

# Check if the strings are equal
check_strings_equal "$str1" "$str2"

# Check if the length of the first string is zero
check_length_zero "$str1"

# Check if the length of the second string is zero
check_length_zero "$str2"

# Concatenate the two strings
concatenate_strings "$str1" "$str2"
