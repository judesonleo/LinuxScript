BEGIN { printf "TOTAL NUMBER OF BOOKS SOLD IN EACH CATEGORY" }
{ books[$1]+=$2 }
END {for(item in books)
{ printf("\n%-17s%2s%-5d\n",item,"= ",books[item])
total+=books[item]
}
printf("\n%-17s%2s%-5d\n","TOTAL BOOKS SOLD","= ",total)
}
