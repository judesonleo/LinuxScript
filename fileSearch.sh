echo "ENTER A FILE NAME"
read file
case $file in
"") echo "INVALID ENTRY";;
*) if [ -f $file ]
then
ls -l $file
else
echo "THE FILE $file IS NOT FOUND"
fi;;
esac
