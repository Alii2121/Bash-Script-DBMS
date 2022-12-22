#!usr/bin/bash

read -p "  Please Specify Table You Want to Insert Into :  " tb 
if ! [[ -f "./$tb" ]]; then
    echo -e "\n Table Doesn't Exist "
    break
elif [[ $tb == "" ]]; then
    echo -e "\n Please Enter A Valid Name "
    break
else
    echo -e "\n  $tb Table Coloumns Are : \n"
    cat ./$tb
    echo -e " \n =================="
fi
        

nocols=`cat ./ali |  grep -o ":" | wc -l   `
echo $nocols
#declare -i i=1
insertion() {
for (( i = 1; i <= $nocols; i++ ));
do

   
   if [[ i -eq 1 ]]; then
     read -p " Please Enter PK value: " PkOfRow
     echo -e "\n" >> ./$tb
     echo -n "   " $PkOfRow":" >> ./$tb  
     continue  
  
  
     elif [[ i -eq $nocols ]]; then

        read -p " Enter coloumn $i Value : " val_col
        echo -n  $val_col":" >> ./$tb
        continue
     else
       read -p " Enter coloumn $i Value : " val_col
       echo -n $val_col":"  >> ./$tb  
   fi
done }
insertion