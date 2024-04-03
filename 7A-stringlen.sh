echo "ENTER A STRING"
read str
len=`expr length $str`
if test $len -ge 10
then
echo "THE STRING CONTAINS $len CHARACTERS"
else
echo "THE STRING CONTIANS LESSER THAN TEN CHARACTERS"
fi
