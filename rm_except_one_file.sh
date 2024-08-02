#!/usr/bin/bash

#Script to remove all files in a directory except for one file. 

#Inputs : path/to/dir, name of the that should not be removed
#Example : ./rm_except_one_file.sh path/to/dir/ file_name

if [ ! -f "$1/$2"  ]; then
    echo "The file $2 does not exist in the directory $1"
    exit
fi

for filePath in $1/*; do
    if [ "$filePath" = "$1/$2" ]; then
        continue
    else
        rm $filePath
    fi
done

echo -e "\nContents remaining in the directory $1 are"
ls $1