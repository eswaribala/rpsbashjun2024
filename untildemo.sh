function groupbooking {
echo "Received no of passengers count as $1"
data=$1
until [ $data -le 0 ]
do
  read -p "Enter Name" name
  echo $name
  ((data--))
done
}

read -p "Enter no of passengers" count
#group booking count
echo "Group Booking Count=$count"

groupbooking $count
