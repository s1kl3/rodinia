include ../../common/make.config

#C compiler
CC = g++


FLAGS = -O3
SRC = streamcluster.cpp
EXE = streamcluster

release:$(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB)	$(FLAGS)

errmsg:$(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D ERRMSG $(FLAGS)
	
ptx:$(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D PTX_MSG $(FLAGS)
	
res:$(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(OPENCRUN_INC) -L$(OPENCRUN_LIB) -D RES_MSG $(FLAGS)
	
clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result*
