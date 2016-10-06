CC = g++

CFLAGS  = -g -Wall -Wfatal-errors -DGETMAX -DGETMIN -DENG

ALL = zad1 zad2 zad3 zad4 zad5

all: $(ALL)

zad1: zad1.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad2: zad2.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad3: zad3.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad4: zad4.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad5: zad5.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

