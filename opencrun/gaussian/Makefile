include ../../common/make.config

#C compiler
CC = g++

SRC = clutils.cpp gaussianElim.cpp utils.cpp

CC_FLAGS = -g -O3

EXE = gaussian

release:
	$(CC) $(KERNEL_DIM) $(CC_FLAGS) -fopenmp $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB)
	
clean: 
	rm -f $(EXE) 
