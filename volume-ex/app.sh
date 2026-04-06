#!/bin/sh

echo "Enter your note:"
read note

echo "$note" >> /data/notes.txt

echo "Saved! Current notes:"
cat /data/notes.txt