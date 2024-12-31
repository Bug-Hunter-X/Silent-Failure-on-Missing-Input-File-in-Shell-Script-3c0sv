#!/bin/bash

# This script handles the case where the input file might not exist.

file_to_process="my_file.txt"

# Check if the file exists and is readable.
if [ ! -r "$file_to_process" ]; then
  echo "Error: File '$file_to_process' does not exist or is not readable."
  exit 1  # Exit with an error code
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

# The script now exits gracefully if my_file.txt is not found.

echo "Script completed."