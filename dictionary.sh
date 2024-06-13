#declare dictionary
declare -A datasource
#assign values to dictionary
datasource[sourcename]=$1
datasource[ipaddress]=$2
datasource[port]=$3
datasource[dbname]=$4
datasource[driver]=$5

#print all the values about oracle data source
echo ${datasource[@]}
#print all the keys about oracle data source
echo ${!datasource[@]}
#print  the length about oracle data source
echo ${#datasource[@]}
#print specific key about oracle data source
echo ${datasource[port]}

#loop to read all the values
for value in ${datasource[@]}
do
echo $value

done
