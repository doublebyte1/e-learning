#!/bin/bash

found=$(find . -name "*.rst")

for f in $found; do
    filename="${f%.*}"
    echo "Converting $f to $filename.md"
    `pandoc $f -f rst -t markdown -o $filename.md`
done