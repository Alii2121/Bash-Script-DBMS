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
    echo "bye"
    #ls -F | grep -Ev '/|@|*|=|>|\|' 

    ;;

3 ) 
  
  echo -e "\n Please Enter Name of Table You Want To Drop :  \n"
  
  #read droptb
  
  #if [ -f "$droptb" ]; then
      
      #rm -i ./$droptb
      #echo -e  "\n Table Dropped Successfully ! \n"

  #else 
     # echo -e "\n Table Doesn't Exist ! \n"
  #fi         
  ;;

4 ) 

echo " test "
;;

5 )

echo "s"

;;

6 )

echo "ss"
;;

7 ) 

echo "s"
;;




* )
    echo "salam"
  ;;
esac 
done    
done