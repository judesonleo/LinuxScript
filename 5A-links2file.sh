if [ $# -gt 0 -a $# -le 2 ]
then
if [ $# -eq 1 ]
then
ls -lR $1 | tr -s " " | cut -d " " -f2,8
else
cd $2
ls -lR $1 | tr -s " " | cut -d " " -f2,8
fi
else
echo "INVALID NUMBER OF ARGUMENTS"
fi
