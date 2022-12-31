#!usr/bin/bash

read -p "Please Enter Table Name: " selectedtb

if ! [[ -f "./$selectedtb"  ]]; then
      echo "Table Doesn't Exist"

else     

 echo -e "\n Table $selectedtb \n"
   cat ./$selectedtb 
   echo -e "\n"
#     
#   read -p "Please Enter Column Name: " colname
#   #read -p "Please Enter Field Value: " fieldval
#    read -p " Please Enter Field Value You Wish to Change: " colval1
#    read -p " Please Enter New Field Value :" colval2 
#   #  read -p "Please Enter PK of Colomun You want to Update: " uptb
#    
#    #delLine=$(awk -F ":" -v f1="$chpk" ' NR>1 !($1==f1) ' ./$selectedtb )
#    #echo $delLine 
#
#     line=`awk -F ":" -v col="$colname" -v val="$colval1" '{for (i=1; i<=NF; i++) if ($i == col) {colindex = i; break}} $colindex == val {print $0}' ./$selectedtb`
#      echo $line
#     #line=`awk -F ":" -v col="$colname" -v val="$colval1" '$col == val {print $0}' ./$selectedtb`
#     #line2=`echo "$line" | sed -i "s/$colval1/$colval2/" ./$selectedtb`
#      #echo "$line2" > ./$selectedtb
#     
#    
#    line2=`echo "$line" | awk -F ":" -v col="$colname" -v val1="$colval1" -v val2="$colval2" '{for (i=1; i<=NF; i++) if (i == col && $i == val1) $i = val2; print}'`
#    line3=`echo "$line2" | sed -i "s/$colval1/$colval2/" ./$selectedtb`
#
#     echo $line2 
#     #sed -i "s/$line/$line2/" ./$selectedtb
#      #sed -i "s/\([^:]*:\)\{$colname\}$colval1/\1$colval2/" ./$selectedtb
#      sed -i "s/\([^:]*:\)\{$((colindex))\}$colval1/\1$colval2/" ./$selectedtb
#
#
#    #line=`grep "^$uptb" ./$selectdb`
#    #echo -e "Coloumn = $line \n"
#    #read -p " Please Enter Field Value You Wish to Change: " colval1
#   # read -p " Please Enter New Field Value :" colval2 
#    #sed -i  "s/$colval1/$colval2/" ./$selectedtb
#    #perl -pi -e "s/$colval1/$colval2/g" ./$selectedtb
fi






        read -p 'Please Enter the Desired column: ' ch_col
        coloumn=`awk -v coltochange="$ch_col" '
            BEGIN{
                FS=":"
            }
            
            {
                for(i=1;i<=NF;i++){
                    if($i==coltochange){
                        print i
                    }
                }
            }
        ' ./$selectedtb`


#echo $field 
$field=$field-1

awk -F ":" -v fl=$field ' NR>1 { print $fl}  ' ./$selectedtb

## Read the input from the user
#read -p "Please Enter Table Name: " selectedtb
#read -p "Please Enter Column Name: " colname
#read -p "Please Enter Field Value You Wish to Change: " colval1
#read -p "Please Enter New Field Value: " colval2
#
## Check if the table file exists
#if ! [[ -f "./$selectedtb"  ]]; then
#  echo "Table Doesn't Exist"
#  exit
#fi
#
## Print the contents of the table file
#echo -e "\n Table $selectedtb \n"
#cat ./$selectedtb
#
## Use awk to search for the line that contains the field value to be changed
#line=$(awk -F ":" -v col="$colname" -v val="$colval1" '$col == $val {print $0}' ./$selectedtb)
#
## Use sed to replace the field value with the new value in the line found by awk
#modified_line=$(echo "$line" | sed  "s/$colval1/$colval2/" )
#sed -i "s/$line/$modified_line/" ./$selectedtb
#
## Write the modified line to the table file
##echo "$modified_line" > ./$selectedtb
#