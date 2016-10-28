# PJC C01 by Rafał Pocztarski
# https://github.com/rsp/rsp-pjc-c01
# https://gitlab.com/rsp/rsp-pjc-c01

CC = g++

CFLAGS = -g -Wall -Wfatal-errors
CFLAGS_Z02 = -DGETMAX -DGETMIN
CFLAGS_Z04 = -DENG

ALL = z01 z02 z03 z04 z05

all: $(ALL)

z01: z01.cc Makefile
	$(CC) $(CFLAGS) -o $@ $@.cc

z02: z02.cc Makefile
	$(CC) $(CFLAGS) -o $@ $@.cc $(CFLAGS_Z02)

z03: z03.cc Makefile
	$(CC) $(CFLAGS) -o $@ $@.cc

z04: z04.cc Makefile
	$(CC) $(CFLAGS) -o $@ $@.cc $(CFLAGS_Z04)

z05: z05.cc Makefile
	$(CC) $(CFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
