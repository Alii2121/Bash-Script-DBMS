#!usr/bin/bash
if [ -d "./DBMS" ]; then  
   cd ./DBMS
else   
   mkdir ./DBMS 2>/dev/null
   cd ./DBMS
fi 
 ########################### START of script and intro choices #######################

echo -e " \n \n--------------- Hello Ali's DBMS User :) ------------ \n \n \n \t \t What are you up to Today? \n \t \t"

echo -e " \n \n --------------------------------------------------- \n \n "

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
            echo -e " \n Database Already exists !"
        else
             mkdir ./$cdb 2> /dev/null
             echo -e " \n Database Created Successfully ! \n "
        fi
 break       
;;



2 )
    
    if [ -d "./$cdb" ]; then
         echo -e "\n"
         ls -f
         echo -e "\n " 
    else 
         echo -e " \n \n No Databases Found \n"
    fi          

 break   
;;


3 ) 
    
    read -p "Please Enter DB Name : " selectdb
    
    if [ -d "./$selectdb" ]; then
    
        cd ./$selectdb
        echo -e "\n Connected to Database Successfully ! \n"
         . ./../selectmenu.sh
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

 break
;;



* )

   exit ;;
esac     

done
done 









