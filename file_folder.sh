read -p "Enter Folder Name to create" folderName
read -p "Enter File Name to create" fileName
echo "before creating folder or file, list them"
ls
#create folder and file
mkdir $folderName
touch $fileName
echo "After creating folder or file, list them"
ls
#remove the folder and file
rm -rf $folderName
rm -f $fileName
echo "After deleting folder or file, list them"
ls


