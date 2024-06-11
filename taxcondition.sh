#user defined fn to calculate income tax
function calculate_tax {
#show the Taxable income
#echo  $1
income=$1 
echo $income
if [ $income -ge 3000000 ]
then
  tax=$(echo "$income*.30" | bc)
elif [ $income -ge 1500000 ] && [ $income -lt 3000000 ]
then
  tax=$(echo "$income*.20" | bc)
elif [ $income -gt 200000 ] && [ $income -lt 1500000 ]
then
  tax=$(echo "$income*.10" | bc)
else
  tax=0
fi
  echo $tax

}



echo "Enter Taxable Income"
read data
calculate_tax $data




