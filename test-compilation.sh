#!/bin/sh
fail () {
  echo TEST FAILED
  exit 1
}
echo zad1 should build with no defines:
g++ -o zad1 zad1.cc -Wall -Wfatal-errors || fail
echo OK
echo zad2 should not build with no defines:
g++ -o zad2-test zad2.cc -Wall -Wfatal-errors && fail
echo OK
echo zad2 should build with GETMIN defined:
g++ -o zad2-test  zad2.cc -Wall -Wfatal-errors -DGETMIN || fail
echo OK
echo zad2 should build with GETMAX defined:
g++ -o zad2-test zad2.cc -Wall -Wfatal-errors -DGETMAX || fail
echo OK
echo zad2 should build with both GETMIN and GETMAX defined:
g++ -o zad2-test zad2.cc -Wall -Wfatal-errors -DGETMIN -DGETMAX || fail
echo OK
echo zad3 should build with no defines:
g++ -o zad3-test zad3.cc -Wall -Wfatal-errors || fail
echo OK
echo zad4 should not build with no defines:
g++ -o zad4-test zad4.cc -Wall -Wfatal-errors && fail
echo OK
echo zad4 should build with ENG defined:
g++ -o zad4-test zad4.cc -Wall -Wfatal-errors -DENG || fail
echo OK
echo zad4 should build with POL defined:
g++ -o zad4-test zad4.cc -Wall -Wfatal-errors -DPOL || fail
echo OK
echo zad4 should not build with both ENG and POL defined:
g++ -o zad4-test zad4.cc -Wall -Wfatal-errors -DENG -DPOL && fail
echo OK
echo zad5 should build with no defines:
g++ -o zad5-test zad5.cc -Wall -Wfatal-errors -DENG -DPOL || fail
echo OK
rm zad?-test

