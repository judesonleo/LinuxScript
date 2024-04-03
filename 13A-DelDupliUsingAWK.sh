BEGIN{
FS=" "
}
{
if(var!=$1 && NR>0)
print line
var=$1
line=$0
}
END{print line}
