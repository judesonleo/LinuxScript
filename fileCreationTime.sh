if [ $# -ne 1 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
if [ -e $1 ]
then
echo "THE FILE $1 WAS CREATED ON: `ls -l $1 | tr -s " " | cut -d " " -f6,7 ` "
else
echo "FILE $1 NOT FOUND"
fi
