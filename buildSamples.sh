
rm -rf Tests
mkdir Tests
echo Building rocBLAS-example_c_dgeam.c
hipcc -D__HIP_PLATFORM_AMD__ rocBLAS/example_c_dgeam.c -lrocblas -o Tests/rocblas_example_c_dgeam
echo Building rocBLAS-example_c_sgemm.cpp
hipcc -D__HIP_PLATFORM_AMD__ rocBLAS/example_sgemm.cpp -lrocblas -o Tests/rocblas_example_sgemm
echo Building rocSOLVER-example_basic.c
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_basic.c -lrocblas -lrocsolver -o Tests/rocsolver_example_basic_c
echo Building rocSOLVER-example_basic.cpp
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_basic.cpp -lrocblas -lrocsolver -o Tests/rocsolver_example_basic_cpp
echo Building rocSOLVER-example_strided_batched.c
hipcc -D__HIP_PLATFORM_AMD__ rocSOLVER/example_strided_batched.c -lrocblas -lrocsolver -o Tests/rocsolver_example_strided_batched
echo Building rocPRIM-example_temporary_storage.cpp
hipcc -D__HIP_PLATFORM_AMD__ -std=c++17 rocPRIM/example_temporary_storage.cpp -o Tests/rocprim_example_temporary_storage
echo Building rocSPARSE-example_axpyi.cpp
hipcc -D__HIP_PLATFORM_AMD__ rocSPARSE/example_axpyi.cpp -o Tests/rocsparse_example_axpyi -lrocsparse
echo Building rocSPARSE-example_spmm_batched_csr.cpp
hipcc -D__HIP_PLATFORM_AMD__ -std=c++17 rocSPARSE/example_spmm_batched_csr.cpp -o Tests/rocsparse_example_spmm_batched_csr -lrocsparse
echo Building rocFFT-rocfft_example_callback.cpp
hipcc -D__HIP_PLATFORM_AMD__ rocFFT/rocfft_example_callback.cpp -o Tests/rocfft_example_callback -lrocfft
echo Building rocFFT-fixed-large-double.cpp
hipcc -D__HIP_PLATFORM_AMD__ rocFFT/fixed-large-double.cpp -o Tests/rocfft_fixed-large-double -lrocfft
cd ..
