#read json array from external file and retrieve names, split and show
names=`cat users.json | jq '.users[] | .name'`
#echo $names
i=1;
for word in $names
do
 if [ `expr $i % 2  | bc` -eq 0 ]
 then
  ((i++))
  echo ${word::-1} 
 else
   ((i++)) 
   continue
 fi
done




