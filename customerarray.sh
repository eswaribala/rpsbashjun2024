#create array of names
names=("Param" "Bala" "Vignesh" "Shubha")
#show length of the array
echo  ${#names[@]}
#show all the elements of the array
echo ${names[@]}
#alternative way to show all the elements of the array
echo ${names[*]}
#pick up specific element from array
echo ${names[2]}
#slicing the array
echo ${names[@]:1:3}

#create dynamic array
customerids=()
echo "Enter the count"
read count
echo "Count=$count"
for n in $(seq 1 $count)
do
#echo $n
#generate random number
gendata=$(($RANDOM % 10))
#assign to array
customerids[$n]=$gendata
done
#read values from array using for loop

for i in ${customerids[@]}
do
echo $i	
done


