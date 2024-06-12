read -t 5 -p "Enter your name" name

if [[ -z $name ]]
then
 echo "Timed out"
else
 echo $name
fi 
