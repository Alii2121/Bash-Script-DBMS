#!usr/bin/bash

read -p "  Please Specify Table You Want to Insert Into :  " tb 
if ! [[ -f "./$tb" ]]; then
    echo -e "\n Table Doesn't Exist "
    break
elif [[ $tb == "" ]]; then
    echo -e "\n Please Enter A Valid Name "
    break
else
    echo -e "\n  $tb Table Coloumns Are : \n"
    cat ./$tb
    echo -e " \n =================="
fi
        

nocols=`tail -1 ./$tb"-meta_data" |  grep -o ":" | wc -l   `



for (( i = 1; i <= $nocols; i++ ));
do

   
   if [[ i -eq 1 ]]; then
     
     read -p " Please Enter PK value: " PkOfRow
      f1=`awk -v i=$i 'BEGIN{ FS = ":"} NR==1 { print $i } ' ./$tb`
      
      if [[ $f1 =~ "(int)"* ]]; then
     
     
        if ! [[ "$PkOfRow" =~ ^[0-9]+$ ]]; then
                echo -e '\n Wrong Datatype Please Enter Numbers Only !! \n'    
                break    
        fi
     
     
      elif [[ $f1 =~ "(str)"* ]]; then
            if ! [[ "$PkOfRow" =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $PkOfRow == '' ]]; then
            echo -e "\n Wrong Datatype Please Enter String ! "
            break
            fi

      
      
      fi   
     
     pk_exists=$(awk -v pk=$PkOfRow 'BEGIN{ FS = ":"}{ if( pk == $1 ){ print } }' ./$tb)
     if [[ $pk_exists ]]; then
         echo "Error: Primary key value already exists in the table ! "
         break
         
     fi    
     
    
     echo -e "\n" >> ./$tb
     echo -n  $PkOfRow":" >> ./$tb  
     
  
  
    elif [[ i -eq $nocols ]]; then

    read -p " Enter coloumn $i Value : " val_col
         f1=`awk -v i=$i 'BEGIN{ FS = ":"} NR==1 { print $i } ' ./$tb`
      
      if [[ $f1 =~ "(int)"* ]]; then
     
     
        if ! [[ "$val_col" =~ ^[0-9]+$ ]]; then
                echo -e '\n Wrong Datatype Please Enter Numbers Only !! \n'    
                break    
        fi
     
     
      elif [[ $f1 =~ "(str)"* ]]; then
            
            if ! [[ "$val_col" =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $val_col == '' ]]; then
            echo -e "\n Wrong Datatype Please Enter String ! "
            break
            fi

      
      
      fi   
     
        echo -n  $val_col":" >> ./$tb
        
    else
       
        read -p " Enter coloumn $i Value : " val_col
         f1=`awk -v i=$i 'BEGIN{ FS = ":"} NR==1 { print $i } ' ./$tb`
      
             if [[ $f1 =~ "(int)"* ]]; then
     

                    if ! [[ "$val_col" =~ ^[0-9]+$ ]]; then
                        echo -e '\n Wrong Datatype Please Enter Numbers Only !! \n'    
                        break    
                    fi
     
     
             elif [[ $f1 =~ "(str)"* ]]; then
                    if ! [[ "$val_col" =~ ^[a-zA-Z]+[a-zA-Z0-9]*$ ]] || [[ $val_col == '' ]]; then
                            echo -e "\n Wrong Datatype Please Enter String ! "
                            break
                    fi

      
      
      fi
      
       echo -n $val_col":"  >> ./$tb  
      
   fi
done
