{
len=length($0)
if ( len <= 10 )
print $0
else
{
for (i=1;i<len;i +=10)
{
print substr ($0,i,10)
}
print substr ($0,i)
}
}
