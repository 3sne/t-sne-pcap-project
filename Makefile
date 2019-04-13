t: test.o utils.o
	gcc -o t test.o utils.o -L/usr/local/cuda/lib64 -lcudart

test.o:
	gcc -c test.c

utils.o: utils.cu
	nvcc -c utils.cu