if test $# -ne 1
then
echo "INVALID NUMBER OF ARGUMENTS, ENTER ONLY ONE ARGUMENT"
else
if test -e $1
then
if test -d $1
then
echo "REVERSE ORDER HEIRARCHY:"
ls -lR $1
echo ""
echo "FILE WITH THE HIGHEST SIZE:"
ls -lR $1 | grep ^- | tr -s " " | cut -d " " -f5 | sort -n | tail -1
else
echo "$1 IS NOT A DIRECTORY"
fi
else
echo "$1 DOESN'T EXISTS"
fi
fi
