#!usr/bin/bash

echo -e "\n Please Enter Table Name"
read tablename



  if [ -f "./$tablename" ]; then
     echo -e "\n Table already exists ! \n \c  "
     
  elif 
         [[ ! $tablename =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $tablename == '' ]]; then
         echo -e "\n Table Name Can't Start with a space or Special Characters \n "
          break
                  

  else 
        
          read -p " Please Enter No. of Coloumns: " nocols

          
       if [[ $nocols == 0 ]]; then
              echo " no. of coloumns can't be 0 "
       elif
            ! [[ "$nocols" =~ ^[0-9]+$ ]]; then
                echo -e '\n Please Enter Numbers Only !! \n'
                break
       else           
           touch ./$tablename
           touch ./$tablename"-meta_data"
           
           echo " The Number of coloumns is =" "$nocols" >> ./$tablename"-meta_data"
           
       fi    
  fi


 for (( i = 1; i <= $nocols; i++ ));

   do
     
    
    
    
if [[ i -eq 1 ]]; then
    read -p " Please Enter Primary Key Name:  " primaryk
     
     # while true
     # do
     # if   [[ ! $primaryk =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $primaryk == '' ]]; then
     #    echo -e "\n Table Name Can't Start with a space or Special Characters \n "
     #  break
     # fi     
     #  done   
       
    
     
       echo "PK of table =" "$primaryk"  >> ./$tablename"-meta_data"
       
       echo -n  $primaryk":" >> ./$tablename
       
elif   [[ i -eq $nocols ]]; then

        read -p " Enter coloumn $i name : " name_col
        echo -n  $primaryk"(PK):" >> ./$tablename"-meta_data" 
        echo -n $name_col":" >> ./$tablename"-meta_data"
        echo -n  $name_col":" >> ./$tablename
else 
       read -p " Enter coloumn $i name : " name_col

       echo -n $name_col":"  >> ./$tablename"-meta_data"
       echo -n $name_col":"  >> ./$tablename
fi


done


echo -e "\n \n Table $tablename Created Successfully !!" 


     

          








    

 

           
