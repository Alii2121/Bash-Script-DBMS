#!usr/bin/bash
datatype() {
        read -p "Please Spicify DataType of Coloumn:  1 for integer or 2 for string: " choice

       if [ "$choice" -eq 1 ]; then
  
              #echo "PK of table =" "$name_col (int)"  >> ./$tablename"-meta_data"
              echo -n  "(int)"$name_col":" >> ./$tablename
               echo -n  "(int)"$name_col":" >> ./$tablename"-meta_data"

       elif [ "$choice" -eq 2 ]; then
  
              #echo "PK of table =" "$primaryk (str)"  >> ./$tablename"-meta_data"
              echo -n  "(str)"$name_col":" >> ./$tablename"-meta_data"
              echo -n "(str)"$name_col":" >> ./$tablename

       else
  
              echo "Invalid choice. Please try again."
       fi
}
#datatype() {
## Ask the user if they want the input to be an integer or a string
#echo "Do you want the input to be an integer (i) or a string (s)?"
#read type
#
#
#if [ "$type" == "i" ]; then
#  
#  if [[ "$name_col" =~ ^[0-9]+$ ]]; then
#    # If the input is an integer, print a message
#    echo "The input is an integer."
#  else
#    # If the input is not an integer, print an error message
#    echo "Error: the input is not an integer."
#  fi
#elif [ "$type" == "s" ]; then
#  # If the user selected string, check if the input is a string
#  if [[ "$name_col" =~ ^[a-zA-Z]+$ ]]; then
#    # If the input is a string, print a message
#    echo ""
#  else
#    # If the input is not a string, print an error message
#    echo "Error: the input is not a string."
#  fi
#else
#  # If the user entered an invalid selection, print an error message
#  echo "Error: invalid selection."
#fi
#}
#



echo -e "\n Please Enter Table Name"
read tablename



  if [ -f "./$tablename" ]; then
     echo -e "\n Table already exists ! \n \c  "
     break
     
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
     
      #while true
      #do
      if   [[ ! $primaryk =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $primaryk == '' ]]; then
         echo -e "\n Table Name Can't Start with a space or Special Characters \n "
       
      fi     
       #done   
       
       read -p "Please Spicify DataType of Coloumn:  1 for integer or 2 for string: " choice

       if [ "$choice" -eq 1 ]; then
  
              echo "PK of table =" "$primaryk (int)"  >> ./$tablename"-meta_data"
              echo -n " "  "(int)"$primaryk"(PK):" >> ./$tablename
              echo -n  "(int)"$primaryk"(PK):" >> ./$tablename"-meta_data" 

       elif [ "$choice" -eq 2 ]; then
  
              echo "PK of table =" "$primaryk (str)"  >> ./$tablename"-meta_data"
              echo -n  "(str)"$primaryk"(PK):" >> ./$tablename"-meta_data" 
              echo -n "(str)"$primaryk"(PK):" >> ./$tablename

       else
  
              echo "Invalid choice. Please try again."
       fi
     
       
       
elif   [[ i -eq $nocols ]]; then

        read -p " Enter coloumn $i name : " name_col
         read -p "Please Spicify DataType of Coloumn:  1 for integer or 2 for string: " choice

       if [ "$choice" -eq 1 ]; then
  
              #echo "PK of table =" "$name_col (int)"  >> ./$tablename"-meta_data"
              echo -n  "(int)"$name_col":" >> ./$tablename
               echo -n  "(int)"$name_col":" >> ./$tablename"-meta_data"

       elif [ "$choice" -eq 2 ]; then
  
              #echo "PK of table =" "$primaryk (str)"  >> ./$tablename"-meta_data"
              echo -n  "(str)"$name_col":" >> ./$tablename"-meta_data"
              echo -n "(str)"$name_col":" >> ./$tablename

       else
  
              echo "Invalid choice. Please try again."
       fi
     
        
        #echo -n  $primaryk"(PK):" >> ./$tablename"-meta_data" 
        #echo -n  $name_col":" >> ./$tablename
        #echo -e "\n Table $tablename Created Succe
        echo -e "\n Table $tablename Created Successfully !! \n "
else 
       read -p " Enter coloumn $i name : " name_col
       datatype
       #echo -n $name_col":"  >> ./$tablename"-meta_data"
       #echo -n $name_col":"  >> ./$tablename
       
fi
 
done





     

          








#### put datatype before each col name to make datatype check on insertion