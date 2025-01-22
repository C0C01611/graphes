#!/bin/bash

for a in *.dot; do
    a2="${a%.*}"
    neato -Tsvg "$a" > "$a2.svg"   
    echo "Généré : $a2.svg"
done

