#!/bin/bash
fail () {
  echo TEST FAILED
  exit 1
}
[ -z "$CXX" ] && CXX=g++
echo =====
echo COMPILATION TESTS
echo using CXX=$CXX CXXFLAGS=$CXXFLAGS
echo CXX VERSION:
$CXX -v
echo z01 should build with no defines:
$CXX -o z01 z01.cc $CXXFLAGS || fail
echo OK
echo z02 should not build with no defines:
$CXX -o z02-test z02.cc $CXXFLAGS && fail
echo OK
echo z02 should build with GETMIN defined:
$CXX -o z02-test  z02.cc $CXXFLAGS -DGETMIN || fail
echo OK
echo z02 should build with GETMAX defined:
$CXX -o z02-test z02.cc $CXXFLAGS -DGETMAX || fail
echo OK
echo z02 should build with both GETMIN and GETMAX defined:
$CXX -o z02-test z02.cc $CXXFLAGS -DGETMIN -DGETMAX || fail
echo OK
echo z03 should build with no defines:
$CXX -o z03-test z03.cc $CXXFLAGS || fail
echo OK
echo z04 should not build with no defines:
$CXX -o z04-test z04.cc $CXXFLAGS && fail
echo OK
echo z04 should build with ENG defined:
$CXX -o z04-test z04.cc $CXXFLAGS -DENG || fail
echo OK
echo z04 should build with POL defined:
$CXX -o z04-test z04.cc $CXXFLAGS -DPOL || fail
echo OK
echo z04 should not build with both ENG and POL defined:
$CXX -o z04-test z04.cc $CXXFLAGS -DENG -DPOL && fail
echo OK
echo z05 should build with no defines:
$CXX -o z05-test z05.cc $CXXFLAGS -DENG -DPOL || fail
echo OK
rm -v z0?-test
echo COMPILATION TESTS PASSED
