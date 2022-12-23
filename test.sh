
 #awk 'BEGIN{FS=":"} {print $1}'  ./DBMS/ali/ali
 num=$(awk -F : ' NR>1 { print $1 } ' ./DBMS/ali/ali)
    echo $num