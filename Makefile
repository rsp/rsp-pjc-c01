CC = g++

CFLAGS  = -g -Wall -Wfatal-errors -DGETMAX -DGETMIN -DENG

ALL = z01 z02 z03 z04 z05

all: $(ALL)

zad1: z01.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad2: z02.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad3: z03.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad4: z04.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad5: z05.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
