h=`who | head -1 | tr -s " " | cut -d " " -f4 | cut -d ":" -f1`
if [ $h -lt 12 ]
then
echo "GOOD MORNING"
else
if [ $h -ge 12 -a $h -lt 17 ]
then
echo "GOOD AFTERNOON"
else
echo "GOOD EVENING"
fi
fi
