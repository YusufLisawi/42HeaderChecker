#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <directory> <name>"
    exit 1
fi

dir="$1"
name="$2"
match=0
count=0
files=""

if [ ! -d "$dir" ]; then
    echo "$dir is not a directory"
    exit 1
fi

echo "List of files checked:"

while read file; do
    count=$((count+1))
    if grep -q "Created:.*$name" "$file"; then
        echo "Name matches in $file"
    else
        echo "Name does not match in $file"
        files+="$file"$'\n'
        match=1
    fi
done < <(find "$dir" -name '*.c')

echo "Total number of files checked: $count"

if [ $match -eq 0 ]; then
    echo "OK"
else
    echo "KO"
    echo "List of files failed the check:"
    echo "$files"
fi

