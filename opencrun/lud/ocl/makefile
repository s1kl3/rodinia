include ../../../common/make.config

INC = -I$(OPENCRUN_INC) -I../common
LIB = -L$(OPENCRUN_LIB)

#C compiler
CC = g++
CC_FLAGS = -g -O3 -Wall

EXE = lud

$(EXE): lud.cpp
	$(CC) $(KERNEL_DIM) $(CC_FLAGS) -o $(EXE) lud.cpp ../common/common.c $(INC) $(LIB)

clean:
	rm -f $(EXE)
