#!usr/bin/bash

mkdir ./DBMS 2>/dev/null


  ###START of script and intro choices###

echo "

--------------- Hello Ali's DBMS User :) ------------
 
            What are you up to Today?
                                                    
                                                    "

echo  "1) Create Database 
2) List Databases
3) Connect to a Database
4) Drop Database "
echo "

--------------------------------------------------- "
echo -n  "Ask and you shall be served :) "
read upto 

case $upto in

 1 )

    read -p "  Please Enter The New Database Name : " cdb 
        if [ -d "./DBMS/$cdb" ]; then
            echo " Database Already exists !"
        else
             mkdir ./DBMS/$cdb
             echo " Database Created Successfully ! "
        fi
;;


2 )
    
    if [ -d "./DBMS" ]; then
         ls ./DBMS/ 
    else 
         echo " Encountered an error"
    fi          

;;

3 ) 
    
    read -p "Please Enter DB Name : " selectdb
    
    if [ -d "./DBMS/$selectdb" ]; then
    
        cd ./DBMS/$selectdb
        echo "Connected to Database Successfully !"
    else 
         echo " No Database with that name exists !"
    fi     

;;


4 ) 

    read -p "Enter the DB Name that you wish to DROP : " dropdb

    if [ -d "./DBMS/$dropdb" ]; then
        
        rm -r ./DBMS/$dropdb
        echo " DB Dropped Successfully ! "

    else

          echo " DB Doesn't Exist "    
    fi
;;



* )

   echo "bye"
   
esac









