#!/bin/bash

echo "Simple Bash Calculator"
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose an operation (+, -, *, /):"
read op

case $op in
    +) result=$(echo "$num1 + $num2" | bc);;
    -) result=$(echo "$num1 - $num2" | bc);;
    \*) result=$(echo "$num1 * $num2" | bc);;
    /) result=$(echo "scale=2; $num1 / $num2" | bc);;
    *) echo "Invalid operation"; exit 1;;
esac

echo "Result: $result"

