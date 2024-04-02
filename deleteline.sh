if [ $# -lt 1 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
exit
fi
echo "ENTER THE WORD TO DELETE"
read word
for file in "$@"
do
grep -iv $word $file | tee 1> /dev/null $file
done
