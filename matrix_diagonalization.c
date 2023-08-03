#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define N                               4

#define INTEGER_ONE                     4096
#define INTEGER_HALF                    2048
#define INTEGER_ZERO                    0
#define INTEGER_BITS                    12

#define ABSOLUTE_ONE                    1
#define ABSOLUTE_ZERO                   0

#define PI                              12868
#define EIGHT_TENTHS_PI                 10295
#define SEVEN_TENTHS_PI                 9008
#define HALF_PI                         6434
#define THREE_TENTHS_PI                 3861
#define QUARTER_PI                      3217
#define ONE_TWENTIETH_PI                644

#define ATAN_SCALE                      2629
#define ATAN_OFFSET                     639
#define ATAN_SECOND_SCALE               3911

#define COS_FIRST_SCALE                 1243
#define COS_FIRST_OFFSET                319
#define COS_SECOND_SCALE                3786
#define COS_SECOND_OFFSET               5962
#define COS_THIRD_SCALE                 1843
#define COS_THIRD_OFFSET                4459

#define SIN_FIRST_SCALE                 -3574
#define SIN_FIRST_OFFSET                11335
#define SIN_SECOND_SCALE                -1261
#define SIN_SECOND_OFFSET               6208
#define SIN_THIRD_SCALE                 1249
#define SIN_THIRD_OFFSET                2263
#define SIN_FOURTH_SCALE                3743

void printMatrix(int matrix[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf( "%s%d%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );  //TODO
        }
    }
}

#define GET_ABSOLUTES(x, y) {                                                           \
    if (x < INTEGER_ZERO) {                                                             \
        abs_x = -x;                                                                     \
    } else {                                                                            \
        abs_x = x;                                                                      \
    }                                                                                   \
                                                                                        \
    if (y < INTEGER_ZERO) {                                                             \
        abs_y = -y;                                                                     \
    } else {                                                                            \
        abs_y = y;                                                                      \
    }                                                                                   \
}

#define ATAN_APPROXIMATION(angle) {                                                     \
    if (angle < -INTEGER_HALF) {                                                        \
        result = ((ATAN_SCALE * angle) >> INTEGER_BITS) - ATAN_OFFSET;                  \
    } else if (angle < INTEGER_HALF) {                                                  \
        result = ((ATAN_SECOND_SCALE * angle) >> INTEGER_BITS);                         \
    } else {                                                                            \
        result = ((ATAN_SCALE * angle) >> INTEGER_BITS) + ATAN_OFFSET;                  \
    }                                                                                   \
}

#define PIECEWISE_ATAN(y, x) {                                                          \
    int angle;                                                                          \
    int abs_x;                                                                          \
    int abs_y;                                                                          \
                                                                                        \
    GET_ABSOLUTES(x, y);                                                                \
                                                                                        \
    if (abs_y > abs_x) {                                                                \
        angle = (x << INTEGER_BITS) / y;                                                \
        ATAN_APPROXIMATION(angle);                                                      \
                                                                                        \
        if (angle < INTEGER_ZERO) {                                                     \
            result += PI;                                                               \
        }                                                                               \
        result = HALF_PI - result;                                                      \
    } else {                                                                            \
        angle = (y << INTEGER_BITS) / x;                                                \
        ATAN_APPROXIMATION(angle);                                                      \
    }                                                                                   \
}

#define CALCULATE_THETAS(a, b, c, d) {                                                  \
    int result;                                                                         \
                                                                                        \
    PIECEWISE_ATAN((c+b), (d-a));                                                       \
    int thetaSum = result;                                                              \
    PIECEWISE_ATAN((c-b), (d+a));                                                       \
    int thetaDif = result;                                                              \
                                                                                        \
    thetaLeft = (thetaSum - thetaDif) >> 1;                                             \
    thetaRight = (thetaSum + thetaDif) >> 1;                                            \
}

#define PIECEWISE_COSINE(x) {                                                           \
    if (x < -EIGHT_TENTHS_PI) {                                                         \
        y = ((COS_FIRST_SCALE * x) >> INTEGER_BITS) - COS_FIRST_OFFSET;                 \
    } else if (x < -QUARTER_PI) {                                                       \
        y = ((COS_SECOND_SCALE * x) >> INTEGER_BITS) + COS_SECOND_OFFSET;               \
    } else if (x < -ONE_TWENTIETH_PI) {                                                 \
        y = ((COS_THIRD_SCALE * x) >> INTEGER_BITS) + COS_THIRD_OFFSET;                 \
    } else if (x < ONE_TWENTIETH_PI) {                                                  \
        y = INTEGER_ONE;                                                                \
    } else if (x < QUARTER_PI) {                                                        \
        y = ((-COS_THIRD_SCALE * x) >> INTEGER_BITS) + COS_THIRD_OFFSET;                \
    } else if (x < EIGHT_TENTHS_PI) {                                                   \
        y = ((-COS_SECOND_SCALE * x) >> INTEGER_BITS) + COS_SECOND_OFFSET;              \
    } else {                                                                            \
        y = ((-COS_FIRST_SCALE * x) >> INTEGER_BITS) - COS_FIRST_OFFSET;                \
    }                                                                                   \
}

#define PIECEWISE_SINE(x) {                                                             \
    if (x < -SEVEN_TENTHS_PI) {                                                         \
        y = ((SIN_FIRST_SCALE * x) >> INTEGER_BITS) - SIN_FIRST_OFFSET;                 \
    } else if (x < -HALF_PI) {                                                          \
        y = ((SIN_SECOND_SCALE * x) >> INTEGER_BITS) - SIN_SECOND_OFFSET;               \
    } else if (x < -THREE_TENTHS_PI) {                                                  \
        y = ((SIN_THIRD_SCALE * x) >> INTEGER_BITS) - SIN_THIRD_OFFSET;                 \
    } else if (x < THREE_TENTHS_PI) {                                                   \
        y = ((SIN_FOURTH_SCALE * x) >> INTEGER_BITS);                                   \
    } else if (x < HALF_PI) {                                                           \
        y = ((SIN_THIRD_SCALE * x) >> INTEGER_BITS) + SIN_THIRD_OFFSET;                 \
    } else if (x < SEVEN_TENTHS_PI) {                                                   \
        y = ((SIN_SECOND_SCALE * x) >> INTEGER_BITS) + SIN_SECOND_OFFSET;               \
    } else {                                                                            \
        y = ((SIN_FIRST_SCALE * x) >> INTEGER_BITS) + SIN_FIRST_OFFSET;                 \
    }                                                                                   \
}

#define CALCULATE_ROTATIONS(i, j) {                         \
    int y;                                                  \
    PIECEWISE_COSINE(thetaLeft);                            \
    leftRotation[i][i] = y;                                 \
    PIECEWISE_SINE(thetaLeft);                              \
    leftRotation[i][j] = -y;                                \
    PIECEWISE_SINE(thetaLeft);                              \
    leftRotation[j][i] = y;                                 \
    PIECEWISE_COSINE(thetaLeft);                            \
    leftRotation[j][j] = y;                                 \
                                                            \
    PIECEWISE_COSINE(thetaRight);                           \
    rightRotation[i][i] = y;                                \
    PIECEWISE_SINE(thetaRight);                             \
    rightRotation[i][j] = y;                                \
    PIECEWISE_SINE(thetaRight);                             \
    rightRotation[j][i] = -y;                               \
    PIECEWISE_COSINE(thetaRight);                           \
    rightRotation[j][j] = y;                                \
}

#define INITIALIZE_MATRIX(matrix) {                         \
    matrix[0][0] = INTEGER_ZERO;                            \
    matrix[0][1] = INTEGER_ZERO;                            \
    matrix[0][2] = INTEGER_ZERO;                            \
    matrix[0][3] = INTEGER_ZERO;                            \
    matrix[1][0] = INTEGER_ZERO;                            \
    matrix[1][1] = INTEGER_ZERO;                            \
    matrix[1][2] = INTEGER_ZERO;                            \
    matrix[1][3] = INTEGER_ZERO;                            \
    matrix[2][0] = INTEGER_ZERO;                            \
    matrix[2][1] = INTEGER_ZERO;                            \
    matrix[2][2] = INTEGER_ZERO;                            \
    matrix[2][3] = INTEGER_ZERO;                            \
    matrix[3][0] = INTEGER_ZERO;                            \
    matrix[3][1] = INTEGER_ZERO;                            \
    matrix[3][2] = INTEGER_ZERO;                            \
    matrix[3][3] = INTEGER_ZERO;                            \
}

#define INITIALIZE_IDENTITY_MATRIX(matrix) {                \
    matrix[0][0] = INTEGER_ONE;                             \
    matrix[0][1] = INTEGER_ZERO;                            \
    matrix[0][2] = INTEGER_ZERO;                            \
    matrix[0][3] = INTEGER_ZERO;                            \
    matrix[1][0] = INTEGER_ZERO;                            \
    matrix[1][1] = INTEGER_ONE;                             \
    matrix[1][2] = INTEGER_ZERO;                            \
    matrix[1][3] = INTEGER_ZERO;                            \
    matrix[2][0] = INTEGER_ZERO;                            \
    matrix[2][1] = INTEGER_ZERO;                            \
    matrix[2][2] = INTEGER_ONE;                             \
    matrix[2][3] = INTEGER_ZERO;                            \
    matrix[3][0] = INTEGER_ZERO;                            \
    matrix[3][1] = INTEGER_ZERO;                            \
    matrix[3][2] = INTEGER_ZERO;                            \
    matrix[3][3] = INTEGER_ONE;                             \
}

#define NORMALIZE_ELEMENT(elem) {                           \
    elem = elem >> INTEGER_BITS;                            \
                                                            \
    if (elem + ABSOLUTE_ONE == ABSOLUTE_ZERO) {             \
        elem = ABSOLUTE_ZERO;                               \
    }                                                       \
}

#define NORMALIZE_MATRIX(m1) {                              \
    NORMALIZE_ELEMENT(m1[0][0]);                            \
    NORMALIZE_ELEMENT(m1[0][1]);                            \
    NORMALIZE_ELEMENT(m1[0][2]);                            \
    NORMALIZE_ELEMENT(m1[0][3]);                            \
    NORMALIZE_ELEMENT(m1[1][0]);                            \
    NORMALIZE_ELEMENT(m1[1][1]);                            \
    NORMALIZE_ELEMENT(m1[1][2]);                            \
    NORMALIZE_ELEMENT(m1[1][3]);                            \
    NORMALIZE_ELEMENT(m1[2][0]);                            \
    NORMALIZE_ELEMENT(m1[2][1]);                            \
    NORMALIZE_ELEMENT(m1[2][2]);                            \
    NORMALIZE_ELEMENT(m1[2][3]);                            \
    NORMALIZE_ELEMENT(m1[3][0]);                            \
    NORMALIZE_ELEMENT(m1[3][1]);                            \
    NORMALIZE_ELEMENT(m1[3][2]);                            \
    NORMALIZE_ELEMENT(m1[3][3]);                            \
}

#define ASSIGN_MATRIX_VALS(m1, m2) {                        \
    m1[0][0] = m2[0][0];                                    \
    m1[0][1] = m2[0][1];                                    \
    m1[0][2] = m2[0][2];                                    \
    m1[0][3] = m2[0][3];                                    \
    m1[1][0] = m2[1][0];                                    \
    m1[1][1] = m2[1][1];                                    \
    m1[1][2] = m2[1][2];                                    \
    m1[1][3] = m2[1][3];                                    \
    m1[2][0] = m2[2][0];                                    \
    m1[2][1] = m2[2][1];                                    \
    m1[2][2] = m2[2][2];                                    \
    m1[2][3] = m2[2][3];                                    \
    m1[3][0] = m2[3][0];                                    \
    m1[3][1] = m2[3][1];                                    \
    m1[3][2] = m2[3][2];                                    \
    m1[3][3] = m2[3][3];                                    \
}

#define MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, element) {                                  \
    matrix[row_num][col_num] += (m1[row_num][element] * (m2[element][col_num]) >> INTEGER_BITS);    \
}

#define MATRIX_MULTIPLICATION_COLUMN(row_num, col_num) {    \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 0)      \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 1)      \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 2)      \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 3)      \
}

#define MATRIX_MULTIPLICATION_ROW(row_num) {                \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 0)                \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 1)                \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 2)                \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 3)                \
}

/**
 *    Multiply an NxN matrix with another NxN matrix, store the output in result[N][N]
 */
#define MATRIX_MULTIPLICATION() {                           \
    int m1[N][N];                                           \
    int m2[N][N];                                           \
                                                            \
    ASSIGN_MATRIX_VALS(m1, leftRotation);                   \
    ASSIGN_MATRIX_VALS(m2, matrix);                         \
                                                            \
    INITIALIZE_MATRIX(matrix);                              \
                                                            \
    MATRIX_MULTIPLICATION_ROW(0)                            \
    MATRIX_MULTIPLICATION_ROW(1)                            \
    MATRIX_MULTIPLICATION_ROW(2)                            \
    MATRIX_MULTIPLICATION_ROW(3)                            \
                                                            \
    ASSIGN_MATRIX_VALS(m1, matrix);                         \
    ASSIGN_MATRIX_VALS(m2, rightRotation);                  \
                                                            \
    INITIALIZE_MATRIX(matrix);                              \
                                                            \
    MATRIX_MULTIPLICATION_ROW(0)                            \
    MATRIX_MULTIPLICATION_ROW(1)                            \
    MATRIX_MULTIPLICATION_ROW(2)                            \
    MATRIX_MULTIPLICATION_ROW(3)                            \
}

#define DIAGONALIZATION_ITERATION(iter_i, iter_j) {         \
    a = matrix[iter_i][iter_i];                             \
    b = matrix[iter_i][iter_j];                             \
    c = matrix[iter_j][iter_i];                             \
    d = matrix[iter_j][iter_j];                             \
                                                            \
    CALCULATE_THETAS(a, b, c, d);                           \
                                                            \
    INITIALIZE_IDENTITY_MATRIX(rightRotation);              \
    INITIALIZE_IDENTITY_MATRIX(leftRotation);               \
                                                            \
    CALCULATE_ROTATIONS(iter_i, iter_j);                    \
                                                            \
    MATRIX_MULTIPLICATION();                                \
}

#define SWEEP() {                                           \
    DIAGONALIZATION_ITERATION(0, 1);                        \
    DIAGONALIZATION_ITERATION(0, 2);                        \
    DIAGONALIZATION_ITERATION(0, 3);                        \
    DIAGONALIZATION_ITERATION(1, 2);                        \
    DIAGONALIZATION_ITERATION(1, 3);                        \
    DIAGONALIZATION_ITERATION(2, 3);                        \
}

/**
 *   Diagonalize the input matrix
 */
void diagonalize(int matrix[N][N]) {
    int a;
    int b;
    int c;
    int d;

    int thetaLeft;
    int thetaRight;
    int rightRotation[N][N];
    int leftRotation[N][N];

    SWEEP();
    SWEEP();
    SWEEP();
    SWEEP();
    SWEEP();
    SWEEP();
}

int main( int argc, char* argv[]) {
    int matrixRead[N][N];
    int m[N][N];

    for (int elem = 1; elem <= N * N; elem++) {
        matrixRead[(elem - 1) / 4][(elem - 1) % 4] = (int) (atof(argv[elem]) * INTEGER_ONE);
    }

    time_t startTime = clock();

    for ( int i = 0; i < 100000; i++) {
        ASSIGN_MATRIX_VALS(m, matrixRead)
        diagonalize(m);
        NORMALIZE_MATRIX(m);
    }

    time_t endTime = clock();

    printMatrix(m);

    printf("elapsed time: %lf\n", ((double)(endTime - startTime))/CLOCKS_PER_SEC);

    return 0;
}