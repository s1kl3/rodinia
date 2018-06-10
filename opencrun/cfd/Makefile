include ../../common/make.config
#C compiler
CC = g++

FLAGS = -O3
SRC = euler3d.cpp

EXE = euler3d

release:$(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) $(FLAGS) 

errmsg:$(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D ERRMSG $(FLAGS)

ptx:$(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D PTX_MSG $(FLAGS)

res:$(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D RES_MSG $(FLAGS)

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result*
