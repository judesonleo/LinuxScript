if [ $# -eq 0 ]
then
echo "INVALID NUMBER OF ARGUMENTS"
fi
for i in "$@"
do
cat /etc/passwd | cut -d ":" -f1>user
grep -w "$i" user>/dev/null
if [ $? -eq 0 ]
then
echo "VALID LOGIN"
echo "THE HOME DIRECTORY IS: "
cat /etc/passwd | grep -w ^"$i" | cut -d ":" -f6
else
echo "INVALID LOGIN"
fi
done
