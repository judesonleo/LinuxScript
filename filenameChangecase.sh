if [ $# -eq 0 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
for fn in "$@"
do
if [ -f $fn ]
then
echo $fn | tr '[a-z]' '[A-Z]'
else
echo "FILE NOT FOUND: $fn"
fi
done
