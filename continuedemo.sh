
#names=("Ashu" "Jaya" "Anoop" "Suma" "Mahesh" "Madhan" "Sharmi" "Sahoo" "Anil" "Ruba")
#print except top 3
#echo ${#names[@]}
#length=${#names[@]}
echo "Enter names separated by space"
read -a names 
echo "You have entered names ${names[@]}"
i=0
for n in ${names[@]}
do
  if [ $i -lt 2 ]
  then
    ((i++))
    continue 
  else 
    ((i++))
    echo  ${names[$i]}
  fi
done
#search for given name existence, if found break the loop
read -p "Enter Name to be searched" name
for n in ${names[@]}
do
  if [ $n = $name ]
  then
     echo " User found in the list"
     break
  
  fi
done

