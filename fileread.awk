#! /usr/bin/awk -f
BEGIN{
FS=","
OFS=","
SUM=0
}

#print contents of the file passed from cli
/0-17/{ print NR,$1,$4} 

{SUM+=$NF} END {print SUM}

{
if ( NR >500 ) {

      {print $1,$4}

}
}
