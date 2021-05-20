#!/bin/sh

dir=$(pwd)
dirDest=$(pwd)/pics
echo $dir

# find "$dir/backups" -type f \( -name "*.jpg" -o -name "*.mp4" -o -name "*.png" \) \
#   -exec sh -c 'echo "$0"' {} \;

find "$dir/backups" -type f -name "*.json" -exec rm -f {} \;

find "$dir/backups" -type f -exec mv -n -v {} pics_repeat/ \;

# find "$dir/backups" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.mp4" \
# 	-o -name "*.MP4" -o -name "*.png" -o -name "*.PNG"  -o -name "*.m4v"  -o -name "*.HEIC" \
# 	-o -name "*.mov" -o -name "*.MOV" \) \
#   -exec mv -n -v {} pics/ \;