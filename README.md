Rafał Pocztarski
=
[PJC][pjc-url] C01, 2016-10-02
-
C++ Examples with CI Tests -
[internal project](https://github.com/rsp/rsp-internal#readme)

Tested with: gcc 6.x and clang 3.8

More PJC examples: https://github.com/rsp/rsp-pjc#readme

Programs
-
**[z01](#z01), [z02](#z02), [z03](#z03), [z04](#z04), [z05](#z05)**

Repos
-
* **GitHub:** https://github.com/rsp/rsp-pjc-c01
* **GitLab:** https://gitlab.com/rsp/rsp-pjc-c01 (private repo, ask for access)

Test Results
-
* **Travis CI:** https://travis-ci.org/rsp/rsp-pjc-c01 [![Travis CI Build Status][travis-img]][travis-url]
* **GitLab CI:** https://gitlab.com/rsp/rsp-pjc-c01/builds [![GitLab CI Build Status][gitlabci-img]][gitlabci-url] (private repo, ask for access)

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
Issues
------
For any bug reports or feature requests please
[post an issue on GitHub][issues-url].

Author
------
[**Rafał Pocztarski**](https://pocztarski.com/)
<br/>
[![Follow on GitHub][github-follow-img]][github-follow-url]
[![Follow on Twitter][twitter-follow-img]][twitter-follow-url]
<br/>
[![Follow on Stack Exchange][stackexchange-img]][stackoverflow-url]

[pjc-url]: https://github.com/rsp/rsp-pjc#readme

[github-url]: https://github.com/rsp/rsp-pjc-c01
[travis-img]: https://travis-ci.org/rsp/rsp-pjc-c01.svg?branch=master
[travis-url]: https://travis-ci.org/rsp/rsp-pjc-c01
[gitlabci-img]: https://gitlab.com/rsp/rsp-pjc-c01/badges/master/build.svg
[gitlabci-url]: https://gitlab.com/rsp/rsp-pjc-c01/builds
[github-follow-url]: https://github.com/rsp
[github-follow-img]: https://img.shields.io/github/followers/rsp.svg?style=social&label=Follow
[twitter-follow-url]: https://twitter.com/intent/follow?screen_name=pocztarski
[twitter-follow-img]: https://img.shields.io/twitter/follow/pocztarski.svg?style=social&label=Follow
[stackoverflow-url]: https://stackoverflow.com/users/613198/rsp
[stackexchange-url]: https://stackexchange.com/users/303952/rsp
[stackexchange-img]: https://stackexchange.com/users/flair/303952.png
