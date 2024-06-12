#get current date and time
Date=`date "+%m%d%y%H%M%S"`
echo $Date
read -p "Enter file name" fileName
file_name=$fileName"_"$Date."log" 
#generated filename
echo $file_name
#create the file
touch $file_name
read -p "Enter file name to read" readFileName
echo $readFileName
#test file exists
if test -f $readFileName
then
#reading and writing when fd = 3
exec 3<> $file_name
  #echo "Rocking with File Write" >&3
  #read content from given file and write here
  while read -r input
  do
   echo $input >&3
  done < $readFileName 

#close file
exec 3>&-
else
 echo "File Not Exists"
fi


