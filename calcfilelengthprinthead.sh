if [ $# -ne 3 ]
then
echo "INVLID NUMBER OF ARGUMENTS"
exit
fi
c=`expr $3 - $2 + 1`
cat $1 | head -$3 | tail -$c
