ls -l $1 | cut -d " " -f1 > f1  # ls -l for listing files ;  $1 for first argument  ; cut using delimiter ls -l $1
ls -l $2 | cut -d " " -f1 > f2 #  select feild 1 ; and write the output in f1 and f2 respectively 
if cmp f1 f2 #compare 2 files
then 
echo "BOTH FILES HAVE IDENTICAL PERMISSIONS"
cat f1 f2 # output f1 and f2
else
echo "BOTH FILES DO NOT HAVE SAME PERMISSIONS"
echo "1st FILE PERMISSION: "
cat f1
echo "2nd FILE PERMISSION: "
cat f2
fi

