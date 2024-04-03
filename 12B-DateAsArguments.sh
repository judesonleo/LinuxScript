if [ $# -ne 3 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
echo "ENTER DATE IS:"
echo "$1-$2-$3"
if [ $1 -gt 12 -o $2 -gt 31 ]
then
echo "INVALID DATE! ENTER DATE IN MM DD YY FORMAT"
exit
fi
year=`expr $3 % 4`
if [ $1 -eq 2 -a $year -eq 0 -a $2 -gt 29 ]
then
echo "FEBRUARY CANNOT CONTAIN MORE THAN 29 DAYS!"
exit
fi
if [ $1 -eq 2 -a $year -ne 0 -a $2 -gt 28 ]
then
echo "FEBRUARY CANNOT CONTAIN MORE THAN 28 DAYS! $3 IS NOT A LEAP YEAR"
exit
fi
if [ $1 -eq 4 -o $1 -eq 6 -o $1 -eq 9 -o $1 -eq 11 ]
then
if [ $2 -eq 31 ]
then
echo "INVALID DAY"
exit
fi
fi
echo "$2-$1-$3"
