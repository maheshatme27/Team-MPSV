#!/bin/bash

# Get the disk usage percentage
disk_usage=$(df -h / | awk 'NR==2{print $5}')

# Remove the '%' character from the end of the percentage value
disk_usage=${disk_usage%\%}

# Check if the disk usage is greater than or equal to 10%
if [ $disk_usage -ge 10 ]; then
  # Send an email notification
  echo "Disk usage has reached $disk_usage%" | mail -s "Disk Usage Warning" maheshatme27@gmail.com
fi

