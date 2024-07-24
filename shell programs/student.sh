#!/bin/bash

# Function to check if a student has passed or failed
check_pass_fail() {
    for mark in "$@"; do
        if (( mark < 40 )); then
            echo "Fail"
            return
        fi
    done
    echo "Pass"
}

# Prompt user for student details
echo "Enter the student's register number:"
read reg_number

echo "Enter the student's name:"
read name

# Initialize an array to store the marks
marks=()

# Loop to read marks for 4 subjects
for i in {1..4}; do
    echo "Enter marks for subject $i:"
    read mark
    marks+=("$mark")
done

# Determine if the student has passed or failed
result=$(check_pass_fail "${marks[@]}")

# Display the result
echo "Student Register Number: $reg_number"
echo "Student Name: $name"
echo "Marks: ${marks[*]}"
echo "Result: $result"
