

CC=g++
CFLAGS=-I. -Wall -c 
LINKARGS=-g
LIBS=-L.


.SUFFIXES: .c .o

.c.o:
	$(CC) $(CFLAGS) -o $@ $<

OBJECT_FILES=	main.o


all : main

main : $(OBJECT_FILES)
	$(CC) $(LINKARGS) $(OBJECT_FILES) -o $@ $(LIBS)

clean : 
	rm -f main $(OBJECT_FILES)

test : main
	./main