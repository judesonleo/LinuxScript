echo "ENTER THREE NUMBERS"
read a b c
if [ $a -lt $b ]
then
if [ $a -lt $c ]
then
echo "$a IS THE SMALLEST NUMBER"
else
echo "$c IS THE SMALLEST NUMBER"
fi
else
if [ $b -lt $c ]
then
echo "$b IS THE SMALLEST NUMBER"
else
echo "$c IS THE SMALLEST NUMBER"
fi
fi
