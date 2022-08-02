
rm -rf Tests
mkdir Tests
hipcc -D__HIP_PLATFORM_AMD__ rocBLAS/example_c_dgeam.c -lrocblas -o Tests/rocblas_example_c_dgeam
hipcc -D__HIP_PLATFORM_AMD__ rocBLAS/example_sgemm.cpp -lrocblas -o Tests/rocblas_example_sgemm
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_basic.c -lrocblas -lrocsolver -o Tests/rocsolver_example_basic_c
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_basic.cpp -lrocblas -lrocsolver -o Tests/rocsolver_example_basic_cpp
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_strided_batched.c -lrocblas -lrocsolver -o Tests/rocsolver_example_strided_batched
cd ..
