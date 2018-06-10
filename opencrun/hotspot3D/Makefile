include ../../common/make.config

ifndef CC
	CC = gcc
endif

OUTPUT = *.out
CCFLAGS=-O3 -lm 

3D: 3D.c CL_helper.c
	$(CC) $^ $(CCFLAGS) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -o $@

clean:
	rm -f 3D $(OUTPUT) 
