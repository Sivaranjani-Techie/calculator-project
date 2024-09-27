all : all.out

all.out : calculator.o 
	gcc calculator.o -o all.out
calculator.o : calculator.c
	gcc calculator.c -c
clean :
	rm -rf all.out test.o
cppcheck:
	cppcheck  calculator.c --error-exitcode=5
memcheck: all.out
	valgrind --leak-check=full --error-exitcode=1 ./all.out 
