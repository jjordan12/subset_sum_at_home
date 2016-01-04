#compile BOINC with:

#_autosetup
#./configure --disable-client --disable-server LDFLAGS=-static-libgcc
#make

#ln -s `g++ -print-file-name=libstdc++.a`
#make



cd ../client/
g++ -DVERSION=$1 -DVERBOSE -DENABLE_CHECKPOINTING -DFALSE_ONLY -D_BOINC_ -D__STDC_LIMIT_MACROS -Ofast -fopenmp -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funroll-loops -Wall -I/home/pi/boinc -I/home/pi/boinc/api -I/home/pi/boinc/lib subset_sum_main.cpp ../common/binary_output.cpp ../common/generate_subsets.cpp ../common/n_choose_k.cpp -o ../bin/SubsetSum_$1_arm-unknown-linux-gnueabihf -L/home/pi/boinc/lib -L/home/pi/boinc/api -lboinc_api -lboinc -pthread
cd ../bin/
