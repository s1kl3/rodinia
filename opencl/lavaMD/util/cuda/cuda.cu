//===============================================================================================================================================================================================================200
//	INCLUDE/DEFINE
//===============================================================================================================================================================================================================200

#include "cuda.h"					// (in library path specified to compiler)

//===============================================================================================================================================================================================================200
//	SET DEVICE FUNCTION
//===============================================================================================================================================================================================================200

void setdevice(void)
{

	// variables
	int num_devices;
	int device;

	// work
	cudaGetDeviceCount(&num_devices);
	if (num_devices > 1) {
		
		// variables
		int max_multiprocessors; 
		int max_device;
		cudaDeviceProp properties;

		// initialize variables
		max_multiprocessors = 0;
		max_device = 0;
		
		for (device = 0; device < num_devices; device++) {
			cudaGetDeviceProperties(&properties, device);
			if (max_multiprocessors < properties.multiProcessorCount) {
				max_multiprocessors = properties.multiProcessorCount;
				max_device = device;
			}
		}
		cudaSetDevice(max_device);
	}

}

//===============================================================================================================================================================================================================200
//	GET LAST ERROR FUNCTION
//===============================================================================================================================================================================================================200

void checkCUDAError(const char *msg)
{
	cudaError_t err = cudaGetLastError();
	if( cudaSuccess != err) {
		// fprintf(stderr, "Cuda error: %s: %s.\n", msg, cudaGetErrorString( err) );
		printf("Cuda error: %s: %s.\n", msg, cudaGetErrorString( err) );
		fflush(NULL);
		exit(EXIT_FAILURE);
	}
}

//===============================================================================================================================================================================================================200
//	END
//===============================================================================================================================================================================================================200
