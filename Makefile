all: sum_test

sum_test: sum.o main.o
	gcc -o sum_test sum.o main.o

sum.o: sum.c sum.h
	gcc -c -o sum.o sum.c

main.o: sum.h main.c
	gcc -c -o main.o main.c

clean:
	rm -f sum_test
	re -f *.o

