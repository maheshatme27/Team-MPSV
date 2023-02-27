#!/bin/bash

# Set up a counter to keep track of the number of minutes passed
min=1

# Create a loop to run for 15 minutes
while [ $min -le 15 ]
do
  # Generate a new filename for each iteration of the loop
  filename="file_$min.txt"

  # Use the 'dd' command to create a 10 MB file
  dd if=/dev/urandom of=$filename bs=1048576 count=10
  
  # Increment the minute counter
  min=$((min+1))
  
  # Wait for 60 seconds before starting the next iteration
  sleep 60
done

# At the 16th minute, print the names of all files created into a log file
if [ $min -eq 16 ]
then
  ls *.txt > log_file.txt
fi

# Delete all files and folders
rm -rf *.txt

