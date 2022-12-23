#!usr/bin/bash

read -p "Please Enter Table Name: " selectedtb

if ! [[ -f "./$selectedtb"  ]]; then
      echo "Table Doesn't Exist"

else     

 echo -e "\n Table $selectedtb \n"
   cat ./$selectdb 
     
   
     read -p "Please Enter PK of Colomun You want to Update: " uptb
    
    #delLine=$(awk -F ":" -v f1="$chpk" ' NR>1 !($1==f1) ' ./$selectedtb )
    #echo $delLine 

     

    line=`grep "^$uptb" ./$selectdb`
    echo -e "Coloumn = $line \n"
    read -p " Please Enter Field Value You Wish to Change: " colval1
    read -p " Please Enter New Field Value :" colval2 
    #sed -i  "s/$colval1/$colval2/g" ./$selectedtb
    #perl -pi -e "s/$colval1/$colval2/g" ./$selectedtb
fi