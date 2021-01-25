#!/bin/bash
nvcc -o bin/serial_build_model serial_build_model.cu -L/usr/local/ -lcnpy -lz --std=c++11
for i in {40..280..60}
    do 
        CUDA_VISIBLE_DEVICES=0 ./bin/serial_build_model $i  2>&1 | tee -a LOG_time_vs_probsize.csv
    done

echo -en '\n' >> LOG_time_vs_probsize.csv