#!usr/bin/bash

echo -e "\n Please Enter Table Name"
read tablename



  if [ -f "./$tablename" ]; then
     echo -e "\n Table already exists ! \n \c  "
     
  elif 
         [[ ! $tablename =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $tablename == '' ]]; then
         echo -e "\n Table Name Can't Start with a space or Special Characters \n "
       
                  

  else 
        
          echo -e "\n Please Enter No. of Coloumns: \n \c"

         read nocols 
       if [[ $nocols == 0 ]]; then
              echo " no. of coloumns can't be 0 "
       elif
            ! [[ "$nocols" =~ ^[0-9]+$ ]]; then
                echo -e '\n Please Enter Numbers Only !! \n'
       else           
           touch ./$tablename
           touch ./$tablename"-meta_data"
           echo -e "\n Table Created Successfully"
       fi    
  fi
