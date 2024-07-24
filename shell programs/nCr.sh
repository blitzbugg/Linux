#!/bin/bash

# Function to calculate factorial of a number
factorial() {
    num=$1
    fact=1
    for (( i=2; i<=num; i++ ))
    do
        fact=$((fact * i))
    done
    echo $fact
}

# Function to calculate nCr
nCr() {
    n=$1
    r=$2

    n_fact=$(factorial $n)
    r_fact=$(factorial $r)
    n_r_fact=$(factorial $((n - r)))

    nCr=$((n_fact / (r_fact * n_r_fact)))
    echo $nCr
}

# Prompt user for values of n and r
echo "Enter the value of n:"
read n

echo "Enter the value of r:"
read r

# Validate the inputs
if ! [[ "$n" =~ ^[0-9]+$ ]] || ! [[ "$r" =~ ^[0-9]+$ ]]; then
    echo "Please enter positive integers for n and r."
elif [ "$r" -gt "$n" ]; then
    echo "r should not be greater than n."
else
    # Calculate and display nCr
    result=$(nCr "$n" "$r")
    echo "The value of $n C $r is: $result"
fi
