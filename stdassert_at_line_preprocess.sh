#!/bin/sh

filepath="$1"

echo "updating assert line number macros for" "$filepath"

while IFS= read -r item
do
    lineNo=$(echo "$item" | awk '{print $1}' | sed -e s/://)

    sed -i "$lineNo""s/assertEq[^,]*/assertEq(\"line:"$lineNo"\"/" "$filepath"

done < <(cat "$filepath" | grep "atLine\." -n)
