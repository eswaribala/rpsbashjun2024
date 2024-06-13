read -p "Give File Name" fileName

wordcount=`cat $fileName | wc -w`
echo "Word Count = $wordcount"

chcount=`cat $fileName | wc -c`
echo "Character Count = $chcount"

#spaces excluded
linecount=`grep -c "." $fileName`
echo "Total no of lines = $linecount"

#spaces included
linecountv1=`cat $fileName | wc -l`
echo "Line Count = $linecountv1"
