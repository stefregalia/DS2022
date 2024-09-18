#!/bin/bash

curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

tr -s '\n' > lab3.tsv  

tr '\t' ',' < lab3.tsv > lab3.csv

num_lines=$(tail -n +2 lab3.csv | wc -l)

echo "The total number of lines remaining in the data file is $num_lines"

tar -czf converted-archive.tar.gz lab3.csv
