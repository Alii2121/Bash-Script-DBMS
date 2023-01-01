#!usr/bin/bash

read -p "Please Enter Table Name: " selectedtb

if ! [[ -f "./$selectedtb"  ]]; then
      echo "Table Doesn't Exist"

else     

 echo -e "\n Table $selectedtb \n"
   cat ./$selectedtb 
   echo -e "\n"

    read -p " Please Enter Field Value You Wish to Change: " colval1
    read -p " Please Enter New Field Value :" colval2 
    #f1=`awk  'BEGIN{ FS = ":"} NR==1 { print $1 } ' ./$selectedtb`
     if ! [[ $colval1 =~ ^[0-9]+$ ]] && [[ $colval2 =~  ^[0-9]+$ ]]; then
        echo -e "\n Datatype doesn't match \n !! "
        break
     elif ! [[ $colval1 =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] && [[ $colval2 =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]]; then  
        echo -e "\n Datatype doesn't match !! \n"
        break
     else
            sed -i  "s/$colval1/$colval2/" ./$selectedtb
            echo -e "\n Field Changed Successfully ! "
      fi
fi





