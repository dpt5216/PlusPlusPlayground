

CC=g++
CFLAGS=-I. -Wall -c
LINKARGS=-g
LIBS=-L.


.SUFFIXES: .cpp .o

.cpp.o:
	$(CC) $(CFLAGS) -o $@ $<


OBJECT_FILES=	main.o

all : main

main : $(OBJECT_FILES)
	$(CC) $(LINKARGS) $(OBJECT_FILES) -o $@ $(LIBS)

clean : 
	rm -f main $(OBJECT_FILES)

debug: CFLAGS+=-g
debug: all

test : main
	./main