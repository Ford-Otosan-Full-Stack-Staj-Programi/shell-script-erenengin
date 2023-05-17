#!/bin/bash


keyword="$1"
path="$2"

function get_files {
local result=$(find "$path" -type f -exec grep -l "$keyword" {} \;)
if [ -z "$result" ]; then
echo "No Result"
else
echo "$result"
fi
}

get_files