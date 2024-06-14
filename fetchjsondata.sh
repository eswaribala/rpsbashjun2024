url=https://jsonplaceholder.typicode.com/users
#send filename from cli
fileName=$1
wget "$url" -O "$fileName"


