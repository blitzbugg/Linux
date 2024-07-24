#!/bin/bash

# Function to calculate the sum of array elements
sum_array() {
    arr=("$@")
    sum=0
    for i in "${arr[@]}"; do
        sum=$((sum + i))
    done
    echo $sum
}

# Prompt user for the number of elements
echo "Enter the number of elements in the array:"
read n

# Initialize an array
array=()

# Prompt user to enter each element
echo "Enter the elements of the array:"
for (( i=0; i<n; i++ )); do
    read element
    array+=("$element")
done

# Calculate and display the sum of the elements
result=$(sum_array "${array[@]}")
echo "The sum of the elements in the array
