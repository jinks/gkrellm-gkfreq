all: gkfreq.so

gkfreq.o: gkfreq.c
	gcc -fPIC -O2 -Wall `pkg-config gtk+-2.0 --cflags` -c gkfreq.c

gkfreq.so: gkfreq.o
	gcc -shared -Wall -o gkfreq.so gkfreq.o

clean:
	rm -rf *.o *.so

install:
	cp gkfreq.so ~/.gkrellm2/plugins/
