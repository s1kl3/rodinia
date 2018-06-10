#ifdef __cplusplus
extern "C" {
#endif

//========================================================================================================================================================================================================200
//	KERNEL_CPU_CUDA_WRAPPER HEADER
//========================================================================================================================================================================================================200

void 
kernel_cpu_opencl_wrapper(params_common common,
							int* endoRow,
							int* endoCol,
							int* tEndoRowLoc,
							int* tEndoColLoc,
							int* epiRow,
							int* epiCol,
							int* tEpiRowLoc,
							int* tEpiColLoc,
							avi_t* frames);

//========================================================================================================================================================================================================200
//	END
//========================================================================================================================================================================================================200

#ifdef __cplusplus
}
#endif
