include ../../../common/make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# Matrix library path
MATRIX_DIR = ../meschach_lib

# C compiler
CC = gcc
CC_FLAGS = -g -O3 -Wall -I$(MATRIX_DIR) -I$(OPENCL_INC)


leukocyte: detect_main.o avilib.o find_ellipse.o find_ellipse_opencl.o track_ellipse.o track_ellipse_opencl.o misc_math.o OpenCL_helper_library.o $(MATRIX_DIR)/meschach.a
	$(CC) $(CC_FLAGS) -lm avilib.o find_ellipse.o find_ellipse_opencl.o track_ellipse.o track_ellipse_opencl.o misc_math.o OpenCL_helper_library.o detect_main.o -o leukocyte $(MATRIX_DIR)/meschach.a -L$(OPENCL_LIB) -lm

%.o: %.[ch]
	$(CC) $(OUTPUT) $(CC_FLAGS) $*.c -c

detect_main.o: detect_main.c find_ellipse.h track_ellipse.h avilib.h

find_ellipse.o: avilib.h

track_ellipse.o: find_ellipse.h avilib.h

$(MATRIX_DIR)/meschach.a:
	cd $(MATRIX_DIR); ./configure --with-all; make all; make clean

clean:
	rm -f *.o *.gch *~ leukocyte
