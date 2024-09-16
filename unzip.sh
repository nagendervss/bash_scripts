#!/bin/bash

dir_path=$1 # Path to the directory containing zip files


find $dir_path "*.zip" | while read fname; do
    zip_file_dirname=$(dirname "$fname")
    zip_file_basename=$(basename "$fname")

    cd "$zip_file_dirname"
    echo "unzipping $fname"
    unzip -o "$zip_file_basename"
done