CC=gcc

default: writer.c
	$(CC) -c -o writer.o writer.c
	$(CC) -o writer writer.o

CROSS_COMPILE: writer.c
	aarch64-none-linux-gnu-$(CC) -c -o writer.o writer.c
	aarch64-none-linux-gnu-$(CC) -o writer writer.o
	file -e apptype writer > /home/yahia/repoassi/assignment-1-yahiaElGamal98/assignments/assignment2/fileresult.txt
	
clean:
	rm -f writer *.o
