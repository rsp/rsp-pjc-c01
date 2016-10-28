# PJC C01 by Rafał Pocztarski
# https://github.com/rsp/rsp-pjc-c01
# https://gitlab.com/rsp/rsp-pjc-c01

CXXFLAGS = -g -Wall -Wfatal-errors
CXXFLAGS_Z02 = -DGETMAX -DGETMIN
CXXFLAGS_Z04 = -DENG

ALL = z01 z02 z03 z04 z05

all: $(ALL)

z01: z01.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

z02: z02.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc $(CXXFLAGS_Z02)

z03: z03.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

z04: z04.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc $(CXXFLAGS_Z04)

z05: z05.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
