#all:
#	g++ -o components.o -I/usr/local/cuda-5.5/include -c components.cpp
#	g++ -o prog  -I/usr/local/cuda-5.5/include main.cpp components.o -lOpenCL
#
include ../../common/make.config


ifdef OUTPUT
	override OUTPUT = -DOUTPUT
endif


OUTPUT = -DOUTPUT

C_C = g++

default:	dwt2d

-Icomponents:
	$(C_C) -o components.o -I$(OPENCL_INC) -c components.cpp 

dwt2d:
	$(C_C) -o dwt2d -I$(OPENCL_INC) \
		main.cpp \
		$(components) \
		$(OUTPUT) \
		-L$(OPENCL_LIB)

clean:	
	rm -rf *.o dwt2d
	rm -f *.bmp.dwt.*

