#compile BOINC with:

#_autosetup
#./configure --disable-client --disable-server LDFLAGS=-static-libgcc
#make

#ln -s `g++ -print-file-name=libstdc++.a`
#make



cd ../client/
g++ -std=c++11 -DVERSION=$1 -DTIMESTAMP -DFALSE_ONLY -D__STDC_LIMIT_MACROS -fopenmp -Ofast -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funroll-loops -Wall subset_sum_main_slow.cpp ../common/binary_output.cpp ../common/generate_subsets.cpp ../common/n_choose_k.cpp -o ../bin/SubsetSum_Slow_$1_arm-unknown-linux-gnueabihf -pthread
cd ../bin/
