/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
// 32*32的矩阵采用8*8分块，通过采用寄存器存储临时变量优化时间局部性，同时采用先存储后转置策略，确保命中次数尽可能多。
// 64*64的矩阵采用8*8分块，分三次存储，先存储前4行(右上部分不作转置，存到B的右上)。
// 再将A的左下存到B的右上，B的原右上存到B的左下，最后转置B的右下，最小化不命中次数。
// 60*68的矩阵，首先考虑8*8分块，剩余的块通过4*4分块存储实现。
// 在多次尝试后，我发现，先遍历列再遍历行，可以使不命中次数尽可能减小。

#include <stdio.h>

#include "cachelab.h"
#include "contracts.h"


int is_transpose(int M, int N, int A[N][M], int B[M][N]);
void trans_32_32(int M, int N, int A[N][M], int B[M][N]);// 先声明函数
void trans_64_64(int M, int N, int A[N][M], int B[M][N]);// 先声明函数
void trans_60_68(int M, int N, int A[N][M], int B[M][N]);// 先声明函数
/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    if (M == 32 && N == 32) trans_32_32(M, N, A, B);
    if (M == 64 && N == 64) trans_64_64(M, N, A, B);
    if (M == 60 && N == 68) trans_60_68(M, N, A, B);
    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc_32_32[] = "8*8 elements per block transpose";
void trans_32_32(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7;
    for (int i = 0; i < 32; i += 8) {
        for (int j = 0; j < 32; j += 8) {
            for (int k = i; k < i + 8; k++) {
                a_0 = A[k][j];
                a_1 = A[k][j + 1];
                a_2 = A[k][j + 2];
                a_3 = A[k][j + 3];
                a_4 = A[k][j + 4];
                a_5 = A[k][j + 5];
                a_6 = A[k][j + 6];
                a_7 = A[k][j + 7];//用临时变量取出，增加时间局部性
                B[j + (k - i)][i] = a_0;
                B[j + (k - i)][i + 1] = a_1;
                B[j + (k - i)][i + 2] = a_2;
                B[j + (k - i)][i + 3] = a_3;
                B[j + (k - i)][i + 4] = a_4;
                B[j + (k - i)][i + 5] = a_5;
                B[j + (k - i)][i + 6] = a_6;
                B[j + (k - i)][i + 7] = a_7;// 先按顺序存在B的相应位置
            }
            for (int k = j; k < j + 8; k++) {
                for (int v = i; v - i < k - j; v++) {
                    a_0 = B[k][v];
                    B[k][v] = B[j + (v - i)][i + (k - j)];
                    B[j + (v - i)][i + (k - j)] = a_0;
                }// 对B进行转置，注意类似于冒泡排序的交换只需要一半次数
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}// 8*8分块

char trans_desc_64_64[] = "8*8 elements per block transpose";
void trans_64_64(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7;
    for (int i = 0; i < 64; i += 8) {
        for (int j = 0; j < 64; j += 8) {
            for (int k = i; k < i + 4; k++) {
                a_0 = A[k][j];
                a_1 = A[k][j + 1];
                a_2 = A[k][j + 2];
                a_3 = A[k][j + 3];// 取出A的左上部分
                a_4 = A[k][j + 4];
                a_5 = A[k][j + 5];
                a_6 = A[k][j + 6];
                a_7 = A[k][j + 7];// 取出A的右上部分
                B[j][k] = a_0;
                B[j + 1][k] = a_1;
                B[j + 2][k] = a_2;
                B[j + 3][k] = a_3;// 左上直接转置存入
                B[j][k + 4] = a_4;
                B[j + 1][k + 4] = a_5;
                B[j + 2][k + 4] = a_6;
                B[j + 3][k + 4] = a_7;// 右上作为暂存区，先存转置后的
            }
            for (int k = j; k < j + 4; k++) {
                a_0 = B[k][i + 4];
                a_1 = B[k][i + 5];
                a_2 = B[k][i + 6];
                a_3 = B[k][i + 7];// 取出B的右上部分
                a_4 = A[i + 4][k];
                a_5 = A[i + 5][k];
                a_6 = A[i + 6][k];
                a_7 = A[i + 7][k];// 取出A的左下部分
                B[k][i + 4] = a_4;
                B[k][i + 5] = a_5;
                B[k][i + 6] = a_6;
                B[k][i + 7] = a_7;// B的右上部分，存上A的左下的转置
                B[k + 4][i] = a_0;
                B[k + 4][i + 1] = a_1;
                B[k + 4][i + 2] = a_2;
                B[k + 4][i + 3] = a_3;// B的左下部分，直接由存好的右上部分提供
            }
            for (int k = i + 4; k < i + 8; k++) {
                a_4 = A[k][j + 4];
                a_5 = A[k][j + 5];
                a_6 = A[k][j + 6];
                a_7 = A[k][j + 7];
                B[j + (k - i)][i + 4] = a_4;
                B[j + (k - i)][i + 5] = a_5;
                B[j + (k - i)][i + 6] = a_6;
                B[j + (k - i)][i + 7] = a_7;
            }
            for (int k = j + 4; k < j + 8; k++) {
                for (int v = i + 4; v - i < k - j; v++) {
                    a_0 = B[k][v];
                    B[k][v] = B[j + (v - i)][i + (k - j)];
                    B[j + (v - i)][i + (k - j)] = a_0;
                }
            }// 跟32*32的思路一样，对右下进行转置
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}// 采用8*8后细分的策略，进行分块后暂存，再转置，减小不命中次数。

char trans_desc_60_68[] = "8*8/4*4 elements per block";
void trans_60_68(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    int a_0, a_1, a_2, a_3, a_4, a_5, a_6, a_7;
    for (int j = 0; j < 56; j += 8) {      // 这是列
        for (int i = 0; i < 64; i += 8) {  // 这是行
            for (int k = i; k < i + 8; k++) {
                a_0 = A[k][j];
                a_1 = A[k][j + 1];
                a_2 = A[k][j + 2];
                a_3 = A[k][j + 3];
                a_4 = A[k][j + 4];
                a_5 = A[k][j + 5];
                a_6 = A[k][j + 6];
                a_7 = A[k][j + 7];
                B[j + (k - i)][i] = a_0;
                B[j + (k - i)][i + 1] = a_1;
                B[j + (k - i)][i + 2] = a_2;
                B[j + (k - i)][i + 3] = a_3;
                B[j + (k - i)][i + 4] = a_4;
                B[j + (k - i)][i + 5] = a_5;
                B[j + (k - i)][i + 6] = a_6;
                B[j + (k - i)][i + 7] = a_7;
            }
            for (int k = j; k < j + 8; k++) {
                for (int v = i; v - i < k - j; v++) {
                    a_0 = B[k][v];
                    B[k][v] = B[j + (v - i)][i + (k - j)];
                    B[j + (v - i)][i + (k - j)] = a_0;
                }
            }
        }
    }// 类似于32*32的思路，实现8*8分块转置
    for (int j = 56; j < 60; j += 4) {     // 这是列
        for (int i = 0; i < 68; i += 4) {  // 这是行
            for (int k = i; k < i + 4; k++) {
                a_0 = A[k][j];
                a_1 = A[k][j + 1];
                a_2 = A[k][j + 2];
                a_3 = A[k][j + 3];
                B[j + (k - i)][i] = a_0;
                B[j + (k - i)][i + 1] = a_1;
                B[j + (k - i)][i + 2] = a_2;
                B[j + (k - i)][i + 3] = a_3;
            }
            for (int k = j; k < j + 4; k++) {
                for (int v = i; v - i < k - j; v++) {
                    a_0 = B[k][v];
                    B[k][v] = B[j + (v - i)][i + (k - j)];
                    B[j + (v - i)][i + (k - j)] = a_0;
                }
            }
        }
    }// 将剩余部分进行4*4分块转置
    for (int j = 0; j < 56; j += 4) {
        for (int i = 64; i < 68; i += 4) {
            for (int k = i; k < i + 4; k++) {
                a_0 = A[k][j];
                a_1 = A[k][j + 1];
                a_2 = A[k][j + 2];
                a_3 = A[k][j + 3];
                B[j + (k - i)][i] = a_0;
                B[j + (k - i)][i + 1] = a_1;
                B[j + (k - i)][i + 2] = a_2;
                B[j + (k - i)][i + 3] = a_3;
            }
            for (int k = j; k < j + 4; k++) {
                for (int v = i; v - i < k - j; v++) {
                    a_0 = B[k][v];
                    B[k][v] = B[j + (v - i)][i + (k - j)];
                    B[j + (v - i)][i + (k - j)] = a_0;
                }
            }
        }
    }// 将剩余部分进行4*4分块转置
    ENSURES(is_transpose(M, N, A, B));
}// 先进行8*8分块转置，再进行4*4分块转置

char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);
    registerTransFunction(trans_32_32, trans_desc_32_32);// 注册函数
    registerTransFunction(trans_64_64, trans_desc_64_64);
    registerTransFunction(trans_64_64, trans_desc_60_68);
    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}
