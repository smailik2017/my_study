#!/bin/bash

for year in {2010..2017}; do for month in {1..12}; do month=$(echo $month | awk '{printf("%02d", $1)}'); mkdir -p $year/$month; for file in {1..5}; do file=$(echo $file | awk '{printf("%03d", $1)}'); echo "Файл $file" > $year/$month/$file.txt; done; done; done

