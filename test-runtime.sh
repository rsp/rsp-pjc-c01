#!/bin/bash
fail () {
  echo TEST FAILED
  exit 1
}
echo make clean
make clean
echo make
make
echo z01 - bmi for 2m and 100kg should be 25
echo 2 100 | ./z01 | tail -1 | grep '\b25\b' || fail
echo OK
echo z01 - bmi for 1.5m and 50kg should be ~22.2
echo 1.5 50 | ./z01 | tail -1 | grep '\b22\.2' || fail
echo OK
echo z02 - min/max of 11, 22, 33 should be 11/33
echo `echo 11 22 33 | ./z02` | grep 'MAX: 33 MIN: 11' || fail
echo OK
echo `echo -6 -9 1e3 | ./z02` | grep 'MAX: 1000 MIN: -9' || fail
echo z02 - min/max of -6, -9, 1e3 should be -9/1000
echo OK
echo z03 - testing 0 1 2
cmp <(echo 0 1 2 | ./z03 | sed 's/.*: //') \
    <(echo '  *'; echo ' **') || fail
echo OK
echo z03 - testing 3 1 1
cmp <(echo 3 1 1 | ./z03 | sed 's/.*: //') \
    <(echo '*  '; echo '*  '; echo '***') || fail
echo OK
echo z03 - testing 2 4 1
cmp <(echo 2 4 1 | ./z03 | sed 's/.*: //') \
    <(echo ' * '; echo ' * '; echo '** '; echo '***') || fail
echo OK
echo z03 - testing 1000 10000 100
[ $(echo 1000 10000 100 | ./z03 | wc -l) = 10000 ] || fail
echo OK
echo z04 - testing 1 2 3
echo 1 2 3 | ./z04 | grep '\b3 for 3$' || fail
echo OK
echo z04 - testing 111 11111 1111
echo 111 11111 1111 | ./z04 | grep '\b5 for 11111$' || fail
echo OK
echo z04 - testing 111 9910 1199 11111 1111
echo 111 9910 1199 11111 1111 | ./z04 | grep '\b20 for 1199$' || fail
echo OK
