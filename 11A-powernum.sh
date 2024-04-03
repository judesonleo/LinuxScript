if [ $# -ne 2 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
val=`echo "$2 ^ $1" | bc`
echo "$2 ^ $1 = $val"
