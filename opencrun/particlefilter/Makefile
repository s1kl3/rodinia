include ../../common/make.config

# C compiler
CC = g++
CC_FLAGS = -O2 
INCLUDES = -I$(OPENCRUN_INC)

ALL: OCL_particlefilter_naive OCL_particlefilter_double OCL_particlefilter_single

OCL_particlefilter_naive: ex_particle_OCL_naive_seq.o
	$(CC) $(CC_FLAGS) ex_particle_OCL_naive_seq.o $(INCLUDES) -L$(OPENCRUN_LIB) -o OCL_particlefilter_naive 

OCL_particlefilter_double: ex_particle_OCL_double_seq.o
	$(CC) $(CC_FLAGS) ex_particle_OCL_double_seq.o $(INCLUDES)  -L$(OPENCRUN_LIB) -o OCL_particlefilter_double 

OCL_particlefilter_single: ex_particle_OCL_single_seq.o
	$(CC) $(CC_FLAGS) ex_particle_OCL_single_seq.o $(INCLUDES)  -L$(OPENCRUN_LIB) -o OCL_particlefilter_single 


%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c

ex_particle_OCL_naive_seq.o: ex_particle_OCL_naive_seq.cpp
	$(CC) $(CC_FLAGS) $(INCLUDES) ex_particle_OCL_naive_seq.cpp -c

ex_particle_OCL_double_seq.o: ex_particle_OCL_double_seq.cpp
	$(CC) $(CC_FLAGS) $(INCLUDES) ex_particle_OCL_double_seq.cpp -c

ex_particle_OCL_single_seq.o: ex_particle_OCL_single_seq.cpp
	$(CC) $(CC_FLAGS) $(INCLUDES) ex_particle_OCL_single_seq.cpp -c

clean:
	rm -f *.o *~ OCL_particlefilter_naive OCL_particlefilter_double OCL_particlefilter_single *.linkinfo
