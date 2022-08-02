
rm -rf Tests
mkdir Tests
hipcc -D __HIP_PLATFORM_AMD__ rocBLAS/example_c_dgeam.c -lrocblas -o Tests/example_c_dgeam
hipcc -D __HIP_PLATFORM_AMD__ rocBLAS/example_sgemm.cpp -lrocblas -o Tests/example_sgemm
cd ..
