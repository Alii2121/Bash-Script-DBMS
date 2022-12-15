#!usr/bin/bash

select i in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update Table"

do

case $i in

Create Table ) 
  echo  "lesa"
  ;;

List Tables ) 
    
    ls -F | grep -Ev '/|@|*|=|>|\|' 

    ;;

Drop Table ) 
  
  echo -e "\n Please Enter Name of Table You Want To Drop :  \n"
  
  read droptb
  
  if [ -f "$droptb" ]; then
      
      rm -i ./$droptb
      echo -e  "\n Table Dropped Successfully ! \n"

  else 
      echo -e "\n Table Doesn't Exist ! \n"
  fi         
  ;;



* )
    echo "salam"
  ;;
esac 
done    