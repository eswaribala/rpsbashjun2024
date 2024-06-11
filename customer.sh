#creating customer attributes
#echo "Enter Account No"
#read accountNo
#generate random account no
#accountNo=$((1 + $RANDOM % 10 * 99))
#echo $accountNo
#accountNo=$((1 + $RANDOM % 10 * 99))
#echo $accountNo
accountNo=$((1 + $RANDOM % 10 * 99))
echo $accountNo

echo "Enter First Name"
read firstName
echo "Enter Last Name"
read lastName
#print the details
printf "Account No=$accountNo\tFirst Name=$firstName\tLast Name=$lastName\n"
#read only variable
roi=0.7
printf "ROI=$roi\n"

#modify the roi
roi=$(echo "$roi+0.2" | bc)
printf "Modified ROI=$roi\n"



