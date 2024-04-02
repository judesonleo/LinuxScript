if test $# -eq 0
then
echo "NO COMMAND ARGUMENTS PASSED"
else
echo "THE REVERSE IS:"
c=$#
d=$#
e=$#
echo "$c" #number of arguments
while [ $c -ne 0 ]
do
eval echo -n "$c" #prints the arguments position
echo -n " "
c=` expr $c - 1 `
done
printf "\n"
while [ $d -ne 0 ]
do
eval echo -n "\$d" #prints the arguments position
echo -n " "
d=` expr $d - 1 `
done
printf "\n"
while [ $e -ne 0 ]
do
eval echo -n "\$$e" #prints the arguments value
echo -n " "
e=` expr $e - 1 `
done
echo ""
fi
