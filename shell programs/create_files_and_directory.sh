#!/bin/bash

# Check if the number of command-line arguments is less than four
if [ "$#" -lt 4 ]; then
    echo "Error: You must provide exactly three file names and one directory name."
    echo "Usage: $0 file1 file2 file3 directory"
    exit 1
fi

# Extract command-line arguments
file1=$1
file2=$2
file3=$3
directory=$4

# Create the directory
mkdir -p "$directory"

# Create the files
touch "$directory/$file1"
touch "$directory/$file2"
touch "$directory/$file3"

# Display success message
echo "Files and directory created successfully in $directory:"
echo "File: $directory/$file1"
echo "File: $directory/$file2"
echo "File: $directory/$file3"
echo "Directory: $directory"
