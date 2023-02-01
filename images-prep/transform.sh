#!/bin/bash
# ./transform.sh /mnt/c/Users/dfrancoeur/Desktop/images/ images/
IN="$1"
OUT="$2"

mkdir -p "$OUT"

find "$IN" -name '*.jpg' -exec sh -c '
    FULL_FILE="$1";
    FILE=`basename "$FULL_FILE"`
    OUT="$2"
    convert -resize 1920 -quality 93% "$FULL_FILE" "$OUT/$FILE"
' shell {} "$OUT" \;