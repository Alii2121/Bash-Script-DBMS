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

           
       fi    
  fi


 for (( i = 1; i <= $nocols; i++ ));

   do
     
    
    
    
if [[ i -eq 1 ]]; then
    echo -e "\n Please Enter Primary Key Name \n \c"
     read $primaryk
      #until [[ $name_col =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]]
       #     do
        #           echo -e "\n Please Enter A Vaild PK Name (only letters preferred) "
         #           echo -e "\n Please Enter Primary Key Name : \c "
          #          read name_col
                 
           # done
    
    
     
       echo "PK of table =" "$primaryk"  >> ./$tablename"-meta_data"
       echo " The Number of coloumns is =" "$nocol" >> ./$tablename"-meta_data"
       echo $primaryk >> ./$tablename
       
elif   [[ i -eq $nocols ]]; then

        echo -e "\n Enter coloumn $i name : \c "
        read $name_col
        echo "$name_col" >> ./$tablename"-meta_data"
        echo  "$name_col" >> ./tablename
else 
       echo -e " \n Enter coloumn $i name :  \c"
       read $name_col
       echo $name_col  >> ./$tablename"-meta_data"
       echo $name_col  >> ./tablename
fi


done

echo -e "\n \n Table $tablename Created Successfully !!"



     

          








    

 

           
