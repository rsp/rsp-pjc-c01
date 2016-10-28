CC = g++

CFLAGS  = -g -Wall -Wfatal-errors -DGETMAX -DGETMIN -DENG

ALL = z01 z02 z03 z04 z05

all: $(ALL)

z01: z01.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

z02: z02.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

z03: z03.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

z04: z04.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

z05: z05.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
