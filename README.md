Rafał Pocztarski
=
PJC C01, 2016-10-02
-
C++ Examples with CI Tests -
[internal project](https://github.com/rsp/rsp-internal#readme)

**[z01](#z01), [z02](#z02), [z03](#z03), [z04](#z04), [z05](#z05)**

[travis-img]: https://travis-ci.org/rsp/rsp-pjc-c01.svg?branch=master
[travis-url]: https://travis-ci.org/rsp/rsp-pjc-c01
[gitlabci-img]: https://gitlab.com/rsp/rsp-pjc-c01/badges/master/build.svg
[gitlabci-url]: https://gitlab.com/rsp/rsp-pjc-c01/builds

Repos
-
* **GitHub:** https://github.com/rsp/rsp-pjc-c01
* **GitLab:** https://gitlab.com/rsp/rsp-pjc-c01 (private repo, ask for access)

Test Results
-
* **Travis CI:** [![Travis CI Build Status][travis-img]][travis-url]
* **GitLab CI:** [![GitLab CI Build Status][gitlabci-img]][gitlabci-url] (private repo, ask for access)

Usage
-
```sh
make
./z01
./z02
./z03
./z04
./z05
```

Compile options
-
### z01
[**z01.cc**](z01.cc)
```sh
g++ -o z01 z01.cc -Wall -Wfatal-errors
```
### z02
[**z02.cc**](z02.cc)
```sh
g++ -o z02 z02.cc -Wall -Wfatal-errors -DGETMAX
g++ -o z02 z02.cc -Wall -Wfatal-errors -DGETMIN
g++ -o z02 z02.cc -Wall -Wfatal-errors -DGETMAX -DGETMIN
```
### z03
[**z03.cc**](z03.cc)
```sh
g++ -o z03 z03.cc -Wall -Wfatal-errors
```
### z04
[**z04.cc**](z04.cc)
```sh
g++ -o z04 z04.cc -Wall -Wfatal-errors -DENG
g++ -o z04 z04.cc -Wall -Wfatal-errors -DPOL
```
### z05
[**z05.cc**](z05.cc)
```sh
g++ -o z05 z05.cc -Wall -Wfatal-errors
```
