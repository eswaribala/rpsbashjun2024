#get file name from cli
filename=$1
values=()
i=0
exec 0<$filename
while IFS="=" read -r key value
do
#echo $key
#echo $value
values[$i]=$value
((i++))
done
#mysql command to connect to database
#-u username -p password -P port -h host -D db name
addproduct="insert into product values(2,'Mobile Phone','2022-02-03',45000,180)"
readproduct='select * from product'
mysql --user=${values[0]} --password=${values[1]}  ${values[3]} << EOF
$addproduct
EOF
echo "Successfully Product Added"
