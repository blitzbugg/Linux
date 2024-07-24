#!/bin/bash

# Function to generate Fibonacci series
fibonacci() {
    n=$1
    a=0
    b=1

    echo "The first $n numbers in the Fibonacci series are:"

    for (( i=0; i<n; i++ ))
    do
        echo -n "$a "
        fn=$((a + b))
        a=$b
        b=$fn
    done

    echo
}

# Prompt user for the number of terms in the Fibonacci series
echo "Enter the number of terms in the Fibonacci series:"
read n

# Validate the input
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -le 0 ]; then
    echo "Please enter a positive integer."
else
    # Generate Fibonacci series
    fibonacci "$n"
fi
