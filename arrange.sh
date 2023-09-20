#!/bin/bash

for file in files/*.txt; do
    filename="${file##*/}"
    filename="${filename%.txt}"  
    fst="${filename:0:1}"
    
    if [[ "$fst" =~ [A-Z] ]]; then
        fst=${fst,,}
    fi

    mv "$file" "$fst/"
done
