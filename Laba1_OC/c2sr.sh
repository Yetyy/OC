#!/bin/bash


if [ "$EUID" -ne 0 ]; then
echo "Please run the script as root."
exit
fi


file_no_extension="file"
file_lib="file.lib"
file_doc="file.doc"


bin_dir="$HOME"
lib_dir="$HOME"
doc_dir="$HOME"


if [ ! -d "$bin_dir" ]; then
mkdir -p "$bin_dir"
fi

if [ ! -d "$lib_dir" ]; then
mkdir -p "$lib_dir"
fi

if [ ! -d "$doc_dir" ]; then
mkdir -p "$doc_dir"
fi


cp "$file_no_extension" "$bin_dir"
cp "$file_lib" "$lib_dir"
cp "$file_doc" "$doc_dir"


chmod 775 "$bin_dir/$file_no_extension"
chgrp user "$bin_dir/$file_no_extension"

echo "Installation completed successfully."
