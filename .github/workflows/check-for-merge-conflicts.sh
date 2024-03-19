#!/bin/bash

# One-liner directly for the action?
# grep -rn '<<<<<<< HSEAD' *; if [ $? -eq 0 ]; then echo 'Merge conflict markers found.'; exit 1; fi

# Search the working directory for merge conflict markers and store the result in a variable
results=$(grep -rn '<<<<<<< HEAD' *)

# Check if the results variable is empty
if [ -n "$results" ]; then
  # Set the color to red and print the error message, then reset the color
  echo -e "\033[31mMerge conflict markers found:\033[0m"
  echo -e "\033[31m$results\033[0m"
  exit 1
else
  echo 'No merge conflict markers found.'
fi
