echo "ENTER USERNAME"
read user
tm=`who | grep -w "$user" | tr -s " " | head -1 | cut -d " " -f4`
l=`echo $tm | wc -c`
if [ $l -eq 1 ]
then
echo "INVALID USERNAME"
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
echo "USERNAME: $user"
echo "LOGGED IN AT: $uhr HOURS & $umin MINUTES"
echo "LOGGED IN PERIOD: $h HOURS & $m MINUTES"
