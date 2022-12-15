#!usr/bin/bash

echo -e "\n Please Enter Table Name"
read tablename



  if [ -f "./$tablename" ]; then
     echo -e "\n Table already exists ! \n \c  "
     
  elif 
         [[ ! $tablename =~  ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $tablename == '' ]]; then
         echo -e "\n Table Name Can't Start with a space or Special Characters \n "
       
  else 
          
          touch ./$tablename
          echo -e "\n Table Created Successfully"
  fi
