CC = gcc
CFLAGS = -O2 -Wall
LFLAGS = -lm

all: rapl-plot rwaxi

rapl-plot:	rapl-plot.o
	$(CC) -o rapl-plot rapl-plot.o $(LFLAGS) 

rapl-plot.o:	rapl-plot.c
	$(CC) $(CFLAGS) -c rapl-plot.c


rwaxi:	rwaxi.o
	$(CC) -o rwaxi rwaxi.o

rwaxi.o: rwaxi.c nf_sume.h
	$(CC) -Wall -Werror -c rwaxi.c

clean:	
	rm -f rwaxi
	rm -f *.o *~ rapl-plot
