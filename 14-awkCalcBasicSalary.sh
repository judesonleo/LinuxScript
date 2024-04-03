BEGIN {
    FS = "\t"
    print "\n\t\t\tSALARY STATEMENT OF EMPLOYEES\n"
    print "-----------------------------------------------------------------------------------------"
    print "SL.NO","\t\t","NAME","\t\t","DESIGNATION","\t","BASIC","\t\t","DA","\t","HRA","\t","GROSS"
    print "-----------------------------------------------------------------------------------------"
}
{
    slno++
    basic_tot += $4
    if ($4 > 10000) {
        da = 0.45 * $4
        da_tot += da
        hra = 0.15 * $4
        hra_tot += hra
    } else {
        da = 0.50 * $4
        da_tot += da
        hra = 0.20 * $4
        hra_tot += hra
    }
    sal_tot += $4 + da + hra
    printf "%2d\t\t%-20s%10s%8d%15.2f%10.2f%10.2f\n", slno, $2, $3, $4, da, hra, $4 + da + hra
}
END {
    print "\n-----------------------------------------------------------------------------------------\n"
    print "TOTAL BASIC PAID:\t\tRs." basic_tot
    print "TOTAL DA PAID:\t\t\tRs." da_tot
    print "TOTAL HRA PAID:\t\t\tRs." hra_tot
    print "TOTAL SALARY PAID:\t\tRs." sal_tot
    print ""
}
