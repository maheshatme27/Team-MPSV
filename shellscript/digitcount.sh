#!/bin/bash

echo "Enter a number"
read number

numdigits=${#number}

if [[ $numdigits -eq 1 ]]; then
  echo "Single digit"
else
  echo "$numdigits digits"
fi

