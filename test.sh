delLine=$(awk -F ":" -v f1="$chpk" ' NR>1 !(f1==$1) ' ./DBMS/ali/ali )
    echo $delLine