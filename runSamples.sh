Tests=(
  "Tests/rocblas_example_c_dgeam"
  "Tests/rocblas_example_sgemm"
  "Tests/rocsolver_example_basic_c"
  "Tests/rocsolver_example_basic_cpp"
  "Tests/rocsolver_example_strided_batched"
  "Tests/rocprim_example_temporary_storage"
  "Tests/rocsparse_example_axpyi"
  "Tests/rocsparse_example_spmm_batched_csr"
  "Tests/rocfft_example_callback"
  "Tests/rocfft_fixed-large-double"
)

for test in ${Tests[@]}; do
  echo "Running "$test" ->"
  echo ""
  $test
  echo "<- "$test "Completed"
  echo ""
done
