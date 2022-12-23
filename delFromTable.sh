read -p "Please Enter Table Name: " selectedtb

if ! [[ -f "./$selectedtb"  ]]; then
      echo "Table Doesn't Exist"

else     

cols2=$(awk -F : ' NR>1 { print $1 } ' ./$selectedtb)
   # echo $cols2
     read -p "Please Enter PK of Colomun You want to delete: " chpk
    
    line=`grep "$chpk" ./$selectdb`
    sed -i "/$line/d" ./$selectdb
    echo "deleted"



    
#pkColName=$( cat ./$selectedtb | awk 'BEGIN{FS=":"}NR==1{print $1}' )
#    read -p "Enter $pkColName of col you want to Edit: " pk
#    num=$(awk -v row_num=$PkOfRow 'BEGIN{ FS = ":"}{ if( row_num == $1 ){ print } }' ./$selectedtb)
#    echo $num
#    if [[ $num = "" ]]
#     then
#      #statements
#      echo "Sorry but this key not found "
#      return 0
#    fi
  # read -p "Please Choose A Table to Delete From : " tablename
  # read -p "Please Spicify The Primary Key of Row: " PkOfRow2
  # num_of_row2=$(awk -v row_number=$PkOfRow2 'BEGIN{ FS = ":"}{ if( row_number == $1 ){ print } }' ./$tablename)
  #      echo $num_of_row2
  #  sed -i "/$num_of_row2/d" "./$tablename"  
  #  echo " $num_of_row2 Successfully Deleted !! "
fi
