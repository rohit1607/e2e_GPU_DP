#!/bin/bash
nvcc -o bin/build_model build_model.cu -L/usr/local/ -lcnpy -lz --std=c++11

for i in {40..280..60}
    do 
        CUDA_VISIBLE_DEVICES=0 ./bin/build_model $i 64 2>&1 | tee -a LOG_GPU_time_vs_probsize.csv
    done


echo -en '\n' >> LOG_GPU_time_vs_probsize.csv