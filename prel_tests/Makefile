run_build_model_and_run_solver: run_build_model run_spvi_only
	echo "run_build_model_and_run_solver"

run_spvi_only: spvi
	CUDA_VISIBLE_DEVICES=0 ./bin/spvi_2
	
spvi: spvi_2.cu
	nvcc -o bin/spvi_2 spvi_2.cu -L/usr/local/ -lcnpy -lz -L/usr/local/cuda/lib64 -lcusparse -lcudart --std=c++11

run_build_model: build_model
	CUDA_VISIBLE_DEVICES=0 ./bin/build_model

build_model: 
	nvcc -o bin/build_model build_model.cu -L/usr/local/ -lcnpy -lz --std=c++11

clean:
	rm -f bin/build_model bin/spvi_2
