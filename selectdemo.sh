select food in Idli Dosa Vada Briyani Quit
do
case $food in
   Idli)
     echo "You have ordered for Idli, Would you like to add more";;
   Dosa)
     echo "You have ordered for Dosa, Would you like to add more";;
   Vada)
     echo "You have ordered for Vada, Would you like to add more";;
   Briyani)
     echo "You have ordered for Briyani, Would you like to add more";; 
   Quit)
       break;;
   *)
     echo "You have not selected right option";;
 esac
done
