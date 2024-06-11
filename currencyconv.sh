#create function to do currency conversion
function convertamount {
#get all the parameters

if [ $# -lt 0 ] || [ $# -gt 4 ]
then
  echo "Mismatched parameter count"
else
 echo $#
 case $2 in
  USD) 
    exchangeamount=`expr $3*$4 | bc`;;
  SAR)
    exchangeamount=`expr $3*$4+100 | bc`;;
  *)  
     echo "none of the cases matching";; 
 esac
fi
return 1

}

read -p "Enter From Currency" fromCurr
echo $fromCurr 
read -p "Enter To Currency" toCurr
echo $toCurr 
read -p "Enter Conversion Amount" amount
echo $amount 
read -p "Enter Conversion Rate " convRate
echo $convRate 
#global variable
exchangeamount=0

convertamount $fromCurr $toCurr $amount $convRate
echo "Exchange Amount=$exchangeamount"
