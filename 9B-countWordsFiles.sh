if [ $# -ne 2 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
str=`cat $1 | tr '\n' ' '`
for a in $str
do
echo "WORD=$a, COUNT=`grep -c "$a" $2`"
done
