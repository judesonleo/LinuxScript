if [ $# -eq 0 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
for fn in "$@"
do
sum=`expr $sum + $fn`
done
echo "THE SUM OF ALL NUMBERS: $sum"
