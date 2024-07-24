#!/bin/bash

# Prompt user for subdirectory name
echo "Enter the subdirectory name:"
read subdirectory

# Check if the subdirectory exists and is a directory
if [ -d "$subdirectory" ]; then
    # List the contents of the subdirectory
    echo "Contents of $subdirectory:"
    ls "$subdirectory"

    # Count entries starting with "ab"
    count=$(ls "$subdirectory" | grep -c '^ab')

    # Display the count
    echo "Number of entries starting with 'ab': $count"
else
    echo "$subdirectory is not a valid directory."
fi
