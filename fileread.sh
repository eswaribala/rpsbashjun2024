line=1
fileName=$1
while read  -r data
do
printf "$line $data\n"
((line++))

done < $fileName
