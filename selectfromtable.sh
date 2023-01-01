#!usr/bin/bash



select i in "Select all table content" "Select Specific Row" "Show Metadata of Table"
do
case $REPLY in 

1 )

  read -p "Please Enter Table Name: " selectedtb

if ! [[ -f "./$selectedtb"  ]]; then
      echo "Table Doesn't Exist"

else [[ -f "./$selectedtb" ]]
      cat ./$selectedtb
fi       
;;

2 ) 
   read -p "Please Choose A Table to Select From : " tablename
   read -p "Please Spicify The Primary Key of Row: " PkOfRow
   num_of_row=$(awk -v row_number=$PkOfRow 'BEGIN{ FS = ":"}{ if( row_number == $1 ){ print } }' ./$tablename)
        echo $num_of_row
;;

3 ) 
   
    read -p "Please Enter Table Name: " selectedtb

    if ! [[ -f "./$selectedtb"  ]]; then
       echo -e "\n Table Doesn't Exist \n"

    else [[ -f "./$selectedtb" ]]
       cat ./$selectedtb"-meta_data"
       echo -e "\n"
       break

fi       
;;


* )
   continue
;;
esac
done

continue 