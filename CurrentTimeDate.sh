date=`date +%d`
if [ $date -ge 10 ]
then
cal | sed "s/$date/**/"
else
cal | sed "s/$date/*/"
fi
