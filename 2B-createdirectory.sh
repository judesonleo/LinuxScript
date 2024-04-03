if [ $# -le 0 -o $# -gt 1 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
mkdir -p $*
echo "ALL DIRECTORIES CREATED"
