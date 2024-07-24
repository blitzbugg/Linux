#!/bin/bash

# Prompt user for the first file name
echo "Enter the name of the first file:"
read file1

# Prompt user for the second file name
echo "Enter the name of the second file:"
read file2

# Check if both files exist
if [ ! -f "$file1" ]; then
    echo "File $file1 does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File $file2 does not exist."
    exit 1
fi

# Compare the files
if cmp -s "$file1" "$file2"; then
    echo "The files are the same."
    # Delete the second file
    rm "$file2"
    echo "File $file2 has been deleted."
else
    echo "The files are not the same."
fi
