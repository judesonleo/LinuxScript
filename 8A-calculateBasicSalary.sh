echo "ENTER THE BASIC SALARY OF THE EMPLOYEE"
read sal

if [ $sal -lt 15000 ]
then
    hra=$(expr $sal \* 10 / 100)
    da=$(expr $sal \* 90 / 100)
    gross=$(expr $sal + $hra + $da)

    echo
    echo "BASIC SALARY = $sal"
    echo "HRA          = $hra"
    echo "DA           = $da"
    echo "-------------------------"
    echo "GROSS SALARY = $gross"
    echo "-------------------------"
    echo
else
    hra=500
    da=$(expr $sal \* 98 / 100)
    gross=$(expr $sal + $hra + $da)

    echo
    echo "BASIC SALARY = $sal"
    echo "HRA          = $hra"
    echo "DA           = $da"
    echo "-------------------------"
    echo "GROSS SALARY = $gross"
    echo "-------------------------"
    echo
fi

