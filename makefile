arh = 32

all: build run 

build: build_i build_s build_o
	gcc -m$(arh) -o demo_gcc main.o

build_i:
	cpp -m$(arh) main.c -o main.i

build_s:
	gcc -m$(arh) -S main.i -o main.s

build_o:
	as -$(arh) -c main.s -o main.o

run:	
	./demo_gcc

clean:
	rm -f *.i *.s *.o demo_gcc
