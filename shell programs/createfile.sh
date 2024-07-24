#!/bin/bash

# Prompt user for file name
echo "Enter the name of the file:"
read filename

# Check if file already exists, if so, remove it
if [ -f "$filename" ]; then
    rm "$filename"
fi

# Enter 5 values into the file
echo "Enter 5 values:"
for i in {1..5}
do
    read value
    echo $value >> "$filename"
done

# Display the unsorted file
echo "Unsorted file contents:"
cat "$filename"

# Sort the file and save to a temporary file
sort "$filename" > sorted_"$filename"

# Display the sorted file
echo "Sorted file contents:"
cat sorted_"$filename"
