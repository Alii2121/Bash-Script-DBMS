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
   
   read -p "Please Spicify The Primary Key of Row" PkOfRow
;;

3 ) 
   
    read -p "Please Enter Table Name: " selectedtb

    if ! [[ -f "./$selectedtb"  ]]; then
       echo "Table Doesn't Exist"

    else [[ -f "./$selectedtb" ]]
       cat ./$selectedtb"-meta_data"
       break

fi       
;;


* )
   continue
;;
esac
done

continue 