#!/bin/sh

filepath="$1"

echo "updating assert line number macros for" "$filepath"

while IFS= read -r item
do
    #echo "og" "$item"
    lineNo=$(echo "$item" | awk '{print $1}' | sed -e s/://)
    #echo "$lineNo"

    sed -i "$lineNo""s/assertEq[^,]*/assertEq(\"line:"$lineNo"\"/" "$filepath"

    #echo "$lineReplaced"

done < <(cat "$filepath" | grep "atLine\." -n)
