#!/bin/bash


echo "Enter the directory name: "
read dir_name


echo "Enter the file extension: "
read extension


echo "Enter the search string: "
read search_string


found_files=$(find $dir_name -name "*.$extension" -type f -print0 | xargs -0 grep -l "$search_string")


if [ -n "$found_files" ]; then
echo "$found_files" » /var/log/фамилия.log
echo "The search result has been written to /var/log/фамилия.log."
else
echo "No files were found that match the specified criteria."
fi
