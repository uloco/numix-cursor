#!/bin/sh
count=0
validInput1="svg"
validInput2="pdf"
validInput3="eps"
validOutput1="eps"
validOutput2="pdf"
validOutput3="png"

echo "This script allows you to convert all files in this folder from one file type to another."

valid=0
echo "Allowed file types for source: $validInput1, $validInput2, $validInput3"
while [ "$valid" != "1" ]
do
    read -p "What file type do you want to use as a source? " sourceType
    if [ "$sourceType" = "$validInput1" ] || [ "$sourceType" = "$validInput2" ] || [ "$sourceType" = "$validInput3" ]; then
        valid=1
    else
        echo "Invalid input! Please use one of the following: $validInput1, $validInput2, $validInput3"
    fi
done

valid=0
echo "Allowed file types for output: $validOutput1, $validOutput2, $validOutput3"
while [ "$valid" != "1" ]
do
    read -p "What file type do you want to convert to? " outputType
    if [ "$outputType" = "$validOutput1" ] || [ "$outputType" = "$validOutput2" ] || [ "$outputType" = "$validOutput3" ]; then
        valid=1
    else
        echo "Invalid input! Please use one of the following: $validOutput1, $validOutput2, $validOutput3"
    fi
done

read -p "With what dpi should it be exported (e.g. 300)? " dpi

for fileSource in *.$sourceType
do
    if [ -f "$fileSource" ]; then   
        count=$((count+1))
        file=$(echo $fileSource | cut -d'.' -f1)
        echo $count". "$fileSource" -> "$file.$outputType
        inkscape $fileSource --export-$outputType=$file.$outputType --export-dpi=$dpi
    else
        echo "no file $fileSource found!"
    fi
done
echo "$count file(s) converted
