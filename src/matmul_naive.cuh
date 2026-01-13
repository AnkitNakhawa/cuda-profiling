#pragma once

void matmul_cpu(
    const float* A,
    const float* B,
    float* C,
    int M, int N, int K
);

void matmul_cuda_naive(
    const float* A,
    const float* B,
    float* C,
    int M, int N, int K
);
