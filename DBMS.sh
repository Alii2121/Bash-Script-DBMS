#!usr/bin/bash

mkdir DBMS 2> ~/ERORRS

  ###START of script and intro choices###

echo -e "-------------- Hello Ali's DBMS User :) ------------
 

            What are you up to Today?"

echo  "1) Create Database 
2) List Databases
3) Connect to a Database
4) Drop Database "

read ch1 



if [[ $ch1 = 1 ]]; then
      
      read -p "  Please Enter The New Database Name : " cdb 
        if [ -d "./DBMS/$cdb" ]; then
            echo " Database Already exist !"
        else
             mkdir ./DBMS/$cdb
             echo " Database Created Successfully ! "
        fi
fi                  
