Rafał Pocztarski
=
C++ Examples with CI Tests -
[internal project](https://github.com/rsp/rsp-internal#readme)

* https://github.com/rsp/rsp-pjc-c01 (GitHub)
* https://gitlab.com/rsp/rsp-pjc-c01 (GitLab - private)

PJC C01, 2016-10-02:
[zad1](#zad1),
[zad2](#zad2),
[zad3](#zad3),
[zad4](#zad4),
[zad5](#zad5)

CI Test Reults:

* Travis CI:
* GitLab CI: [![GitLab CI Build Status](https://gitlab.com/rsp/rsp-pjc-c01/badges/master/build.svg)](https://gitlab.com/rsp/rsp-pjc-c01/builds)

Usage
-
```sh
make
./zad1
./zad2
./zad3
./zad4
./zad5
```

Compile options
-
### zad1
[**zad1.cc**](zad1.cc)
```sh
g++ -o zad3 zad3.cc -Wall -Wfatal-errors
```
### zad2
[**zad2.cc**](zad2.cc)
```sh
g++ -o zad2 zad2.cc -Wall -Wfatal-errors -DGETMAX
g++ -o zad2 zad2.cc -Wall -Wfatal-errors -DGETMIN
g++ -o zad2 zad2.cc -Wall -Wfatal-errors -DGETMAX -DGETMIN
```
### zad3
[**zad3.cc**](zad3.cc)
```sh
g++ -o zad3 zad3.cc -Wall -Wfatal-errors
```
### zad4
[**zad4.cc**](zad4.cc)
```sh
g++ -o zad4 zad4.cc -Wall -Wfatal-errors -DENG
g++ -o zad4 zad4.cc -Wall -Wfatal-errors -DPOL
```
### zad5
[**zad5.cc**](zad5.cc)
```sh
g++ -o zad3 zad3.cc -Wall -Wfatal-errors
```
