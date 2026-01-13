cmake_minimum_required(VERSION 3.24)
project(cuda_matmul LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)

# Enable CUDA separable compilation
set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)

# T4 = compute capability 7.5
set(CMAKE_CUDA_ARCHITECTURES 75)

add_executable(cuda_matmul
        src/main.cu
        src/matmul_naive.cu
        src/matmul_naive.cu
)

target_compile_options(cuda_matmul PRIVATE
        $<$<COMPILE_LANGUAGE:CUDA>:
        -lineinfo
        >
)
