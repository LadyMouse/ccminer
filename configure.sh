# possible additional CUDA_CFLAGS
#-gencode=arch=compute_50,code=\"sm_50,compute_50\"
#-gencode=arch=compute_35,code=\"sm_35,compute_35\"
#-gencode=arch=compute_30,code=\"sm_30,compute_30\"

#--ptxas-options=\"-v -dlcm=cg\""

extracflags="-march=native -std=c++11 -D_REENTRANT -falign-functions=16 -falign-jumps=16 -falign-labels=16"

CUDA_CFLAGS="-O3 -std=c++11 -Xcompiler -Wall" ./configure CXXFLAGS="-O3 $extracflags" --with-cuda=/usr/local/cuda --with-nvml=libnvidia-ml.so

