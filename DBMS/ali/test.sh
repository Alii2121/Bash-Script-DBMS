# #
# #
#Prompt the user for the column name
# #read -p "Enter the column name: " column
# #
#Prompt the user for the field they want to replace
# #read -p "Enter the field you want to replace: " field
# #
#Prompt the user for the replacement value
# #read -p "Enter the replacement value: " replacement
# #
#Use awk to find and replace the field in the specified column
# #new=`awk -v column="$column" -v field="$field" -v replacement="$replacement" '
#  Set the field separator to the specified character
# #  FS=":"
#  Set the output field separator to the specified character
#  OFS=fs
#  Find the field and replace it with the replacement value
# #  {
#    Find the index of the specified column
#    # for (i=1; i<=NF; i++) if ($i == column) {col = i; break}
#    Replace the field with the replacement value if it matches
#    # if ($col == field) $col = replacement
#    Write the modified line to the temporary file
#    # {print}
# #  }
# #' ./DBMS/ali/ali > temp && mv temp  ./DBMS/ali/ali`
# #
# #echo $new



#!/bin/bash

# Read the input file
#input_file=""
#
## Read each line of the input file
#while IFS=: read -r field
#do
#  # Check if the field starts with "(int)"
#  if [[ $field == "(int)"* ]]; then
#    # Field is an integer
#    echo "Field is an integer: $field"
#  else
#    # Field is not an integer
#    echo "Field is not an integer: $field"
#  fi
#done < "$input_file"
#




 awk 'BEGIN{ FS = ":"} NR==1 { print $1 } ' ./test1