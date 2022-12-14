#!usr/bin/bash

mkdir ./DBMS 2>/dev/null


  ###START of script and intro choices###

echo "

--------------- Hello Ali's DBMS User :) ------------
 
            
            What are you up to Today?
                                                                              "

echo " 
---------------------------------------------------
"

echo  "Ask and you shall be served :) 
"

while true 

do 

PS3="Please Enter Your Choice : "

select i in "Create Database" "List Databases" "Connect to a Database" "Drop Database" "Exit"

do

case $REPLY in

 1 )

    read -p "  Please Enter The New Database Name : " cdb 
        if [ -d "./DBMS/$cdb" ]; then
            echo " Database Already exists !"
        else
             mkdir ./DBMS/$cdb
             echo " Database Created Successfully ! "
        fi
 break       
;;



2 )
    
    if [ -d "./DBMS" ]; then
         ls ./DBMS/ 
    else 
         echo " Encountered an error"
    fi          

 break   
;;

3 ) 
    
    read -p "Please Enter DB Name : " selectdb
    
    if [ -d "./DBMS/$selectdb" ]; then
    
        cd ./DBMS/$selectdb
        echo "Connected to Database Successfully !"
    else 
         echo " No Database with that name exists !"
    fi     

 break
;;


4 ) 

    read -p "Enter the DB Name that you wish to DROP : " dropdb

    if [ -d "./DBMS/$dropdb" ]; then
        
        rm -r ./DBMS/$dropdb
        echo " DB Dropped Successfully ! "

    else

          echo " DB Doesn't Exist "    
    fi

 break
;;



* )

   exit ;;
     
esac
done
done 







