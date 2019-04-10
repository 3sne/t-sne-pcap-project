CFLAG=-c
t_IMP_PATH=/usr/local/cuda/lib64
t_ALSO_IMP=cudart

t: test.o utils.o
	gcc -o t test.o utils.o -L$(t_IMP_PATH) -l$(t_ALSO_IMP)

test.o: test.c
	gcc $(CFLAG) test.c

utils.o: utils.cu
	nvcc $(CFLAG) utils.cu