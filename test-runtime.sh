#!/bin/bash
echo zad1 - bmi for 2m and 100kg should be 25
echo 2 100 | ./zad1 | tail -1 | grep '\b25\b' || fail
echo OK
echo zad1 - bmi for 1.5m and 50kg should be ~22.2
echo 1.5 50 | ./zad1 | tail -1 | grep '\b22\.2' || fail
echo OK
echo zad2 - min/max of 11, 22, 33 should be 11/33
echo `echo 11 22 33 | ./zad2` | grep 'MAX: 33 MIN: 11' || fail
echo OK
echo `echo -6 -9 1e3 | ./zad2` | grep 'MAX: 1000 MIN: -9' || fail
echo zad2 - min/max of -6, -9, 1e3 should be -9/1000
echo OK
echo zad3 testing 0 1 2
cmp <(echo 0 1 2 | ./zad3 | sed 's/.*: //') \
    <(echo '  *'; echo ' **') || fail
echo OK
echo zad3 testing 3 1 1
cmp <(echo 3 1 1 | ./zad3 | sed 's/.*: //') \
    <(echo '*  '; echo '*  '; echo '***') || fail
echo OK
echo zad3 testing 2 4 1
cmp <(echo 2 4 1 | ./zad3 | sed 's/.*: //') \
    <(echo ' * '; echo ' * '; echo '** '; echo '***') || fail
echo OK
