read -p "Get File Name to Find the Size" filename

file_size=$(ls -l $filename | awk '{print $5}')
echo $file_size
