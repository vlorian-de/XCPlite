#!/bin/sh

# Loop through all .c files found in the current directory and subdirectories
find . -type f -name "*.c" | while read file; do
    echo "Checking syntax for $file"
    # Run gcc for syntax checking, include the src files directory
    gcc -fsyntax-only -I"./src/" "$file"
    if [ $? -eq 0 ]; then
        echo "$file: Syntax is correct"
    else
        echo "$file: Syntax errors found"
    fi
done


# Loop through all .c files found in the current directory and subdirectories
find . -type f -name "*.c" | while read file; do
    echo "Checking types for $file"
    # Compile the file to check for type errors, include the src files directory
    gcc -c ./src/" "$file"
    if [ $? -eq 0 ]; then
        echo "$file: No type errors found"
    else
        echo "$file: Type errors found"
    fi
done
