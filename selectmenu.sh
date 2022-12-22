#!usr/bin/bash
while true
do
select i in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update Table"

do 

case $REPLY in

1 ) 
   
   . ./../../createTable.sh
  
  ;;

2 ) 
    echo -e " \n This Database Contains Tables: "
    ls -p | grep -v /
     
    

    ;;

3 ) 
  
  echo -e "\n Please Enter Name of Table You Want To Drop :  \n"

  read droptb

  if [ -f "$droptb" ]; then
     
     rm  ./$droptb
     echo -e  "\n Table Dropped Successfully ! \n"
  else 
     echo -e "\n Table Doesn't Exist ! \n"
  fi         
  ;;

4 ) 



echo " test "
;;

5 )

. ./../../selectfromtable.sh
continue

;;

6 )

echo "ss"
;;

7 ) 

echo "s"
;;




* )
    break
  ;;
esac 
done    
done