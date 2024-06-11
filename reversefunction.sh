#create user defined reverse function
function reverse {
#count the no of arguments passed
echo $#
#show the script name
echo $0
#rertieve first argument
data=$1
#declare dynamic array
revno=()
i=0
while [ $data -gt 0 ]
do
quo=`expr $data / 10 | bc`
rem=`expr $data % 10 | bc`
revno[$i]=$rem
((data=$quo))
((i++))
done
echo "Reversing Done"
echo ${revno[@]}

}

#main calling the function
reverse 7896 
