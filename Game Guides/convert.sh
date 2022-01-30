#!/bin/bash
FILES_PATH=./Docx
for file in "$FILES_PATH"/*
do
	FILE_NAME=$(basename "$file" .docx)
	echo "converting $FILE_NAME"
	`pandoc -o "$FILE_NAME".md --extract-media=./images/"${FILE_NAME// /-}" "$file"`

done
