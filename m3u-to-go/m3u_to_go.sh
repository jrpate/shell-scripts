#!/bin/bash
base=$(echo "$1" | sed 's/\(.*\)\..*/\1/')
mkdir "$base"
cat $1 | grep -v '#' | \
while read i; do cp -v "$i" "$base"; done 
ls $base/* | sort > "$base"/"$base".m3u
