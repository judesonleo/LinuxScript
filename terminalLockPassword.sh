clear
stty echo
while true
do
echo "ENTER THE PASSWORD"
read pass1
echo "RE-ENTER THE PASSWORD"
read pass2
if [ $pass1 = $pass2 ]
then
echo "TERMINAL LOCKED"
echo "TO UNLOCK ENTER THE PASSWORD"
pass1=" "
until [ "$pass1" = "$pass2" ]
do
echo "ENTER CORRECT PASSWORD"
read pass1
done
echo "TERMINAL UNLOCKED"
stty echo
exit
else
echo "PASSWORD MISMATCHED, RETYPE THEM"
stty echo
fi
done
