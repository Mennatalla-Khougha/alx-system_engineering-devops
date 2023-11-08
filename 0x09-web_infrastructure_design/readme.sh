#!/bin/bash

read -p "Enter the first header  : " firstheader
read -p "Enter the second header : " secondheader

echo "|     $firstheader        |       $secondheader       |" >> task3.md
echo "| ----------------------  | ------------------------- |" >> task3.md

read -p "Enter the number of files/ directory : " number


for ((i=1; i<=number;i++))
do
        echo ""
        read -p "Enter the filename $i  : " filename
        read -p "Enter the description  : " description

        echo "| $filename   |   $description|" >> task3.md
done