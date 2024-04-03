echo "ENTER USERNAME"
read user
tm=`who | grep -w "$user" | tr -s " " | head -1 | cut -d " " -f4`
l=`echo $tm | wc -c`
if [ $l -eq 1 ]
then
echo "INVAILD USERNAME"
exit
fi
uhr=`echo $tm | cut -d ":" -f1`
umin=`echo $tm | cut -d ":" -f2`
shr=`date "+%H"`
smin=`date "+%M"`
m=`expr $smin - $umin`
h=`expr $shr - $uhr`
if [ $m -lt 0 ]
then
m=`expr $m + 60`
h=`expr $h - 1`
fi
if [ $h -eq 0 -a $m -lt 1 ]
then
echo "$user HAS LOGGED IN JUST NOW"
else
echo "$user HAS LOGGED IN $h HOURS & $m MINUTES AGO"
fi
