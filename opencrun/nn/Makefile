include ../../common/make.config

#C compiler
CC = g++

SRC = nearestNeighbor.cpp clutils.cpp utils.cpp

CC_FLAGS = -g -O3

EXE = nn

release:
	$(CC) $(CC_FLAGS) -fopenmp $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB)
	
clean: 
	rm -f $(EXE) 
