#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <time.h>

#define N 4
#define PI 3.14159265358979323846

/**
 *     Takes a square matrix
 *     The function prints the contents of the matrix
 */
void printMatrix( double matrix[N][N] ) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            //(j,i) because column-first
            printf( "%s%f%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );  //TODO
        }
    }
}

#define GET_ABSOLUTES(x, y) { \
    if (x < 0) { \
        abs_x = -1 * x; \
    } else { \
        abs_x = x; \
    } \
    \
    if (y < 0) { \
        abs_y = -1 * y; \
    } else { \
        abs_y = y; \
    } \
}

#define ATAN_APPROXIMATION(angle) { \
    if (angle < -0.5) { \
        result = 0.64169321 * angle - 0.15586383446810864; \
    } else if (angle < 0.5) { \
        result = 0.95463213 * angle; \
    } else { \
        result = 0.64169321 * angle + 0.15586383446810864; \
    } \
}

#define PIECEWISE_ATAN(y, x) { \
    double angle; \
    double abs_x; \
    double abs_y; \
    \
    GET_ABSOLUTES(x, y); \
    \
    if (abs_y > abs_x) { \
        angle = x / y; \
        ATAN_APPROXIMATION(angle); \
        \
        result = (PI * 0.5) - result; \
        if (angle < 0) { \
            result -= PI; \
        } \
    } else { \
        angle = y / x; \
        ATAN_APPROXIMATION(angle); \
    } \
}

#define CALCULATE_THETAS(a, b, c, d) { \
    double result; \
    \
    PIECEWISE_ATAN((c+b), (d-a)); \
    printf("Actual Value for atan(%lf): %lf\n", (c+b)/(d-a), atan((c+b)/(d-a))); \
    printf("Predicted Value for atan(%lf): %lf\n\n", (c+b)/(d-a), result); \
    double thetaSum = result; \
    PIECEWISE_ATAN((c-b), (d+a)); \
    double thetaDif = result; \
    \
    thetaLeft = (thetaSum - thetaDif) * 0.5; \
    thetaRight = (thetaSum + thetaDif) * 0.5; \
}

#define PIECEWISE_COSINE(x) { \
    if (x < -0.8 * PI) { \
        y = 0.30330605 * x - 0.07788022627558189; \
    } else if (x < -0.25 * PI) { \
        y = 0.92420438 * x + 1.4553626015890255; \
    } else if (x < -0.05 * PI) { \
        y = 0.44993379 * x + 1.0884223925948238; \
    } else if (x < 0.05 * PI) { \
        y = 1.00; \
    } else if (x < 0.25 * PI) { \
        y = -0.44993379 * x + 1.0884223925948238; \
    } else if (x < 0.8 * PI) { \
        y = -0.92420438 * x + 1.4553626015890255; \
    } else { \
        y = -0.30330605 * x - 0.07788022627558144; \
    } \
}

#define PIECEWISE_SINE(x) { \
    if (x < -0.7 * PI) { \
        y = -0.87252321 * x - 2.767323236007252; \
    } else if (x < -0.5 * PI) { \
        y = -0.30774876 * x - 1.5155580463340934; \
    } else if (x < -0.3 * PI) { \
        y = 0.30478771 * x - 0.5524504767532536; \
    } else if (x < 0.3 * PI) { \
        y = 0.91378081 * x; \
    } else if (x < 0.5 * PI) { \
        y = 0.30478771 * x + 0.5524504767532532; \
    } else if (x < 0.7 * PI) { \
        y = -0.30774876 * x + 1.5155580463340925; \
    } else { \
        y = -0.87252321 * x + 2.7673232360072513; \
    } \
}

#define CALCULATE_ROTATIONS(i, j) { \
    double y; \
    PIECEWISE_COSINE(thetaLeft); \
    leftRotation[i][i] = y; \
    PIECEWISE_SINE(thetaLeft); \
    leftRotation[i][j] = -y; \
    PIECEWISE_SINE(thetaLeft); \
    leftRotation[j][i] = y; \
    PIECEWISE_COSINE(thetaLeft); \
    leftRotation[j][j] = y; \
    \
    PIECEWISE_COSINE(thetaRight); \
    rightRotation[i][i] = y; \
    PIECEWISE_SINE(thetaRight); \
    rightRotation[i][j] = y; \
    PIECEWISE_SINE(thetaRight); \
    rightRotation[j][i] = -y; \
    PIECEWISE_COSINE(thetaRight); \
    rightRotation[j][j] = y; \
}

#define INITIALIZE_MATRIX(matrix) { \
    matrix[0][0] = 0; \
    matrix[0][1] = 0; \
    matrix[0][2] = 0; \
    matrix[0][3] = 0; \
    matrix[1][0] = 0; \
    matrix[1][1] = 0; \
    matrix[1][2] = 0; \
    matrix[1][3] = 0; \
    matrix[2][0] = 0; \
    matrix[2][1] = 0; \
    matrix[2][2] = 0; \
    matrix[2][3] = 0; \
    matrix[3][0] = 0; \
    matrix[3][1] = 0; \
    matrix[3][2] = 0; \
    matrix[3][3] = 0; \
}

#define INITIALIZE_IDENTITY_MATRIX(matrix) { \
    matrix[0][0] = 1; \
    matrix[0][1] = 0; \
    matrix[0][2] = 0; \
    matrix[0][3] = 0; \
    matrix[1][0] = 0; \
    matrix[1][1] = 1; \
    matrix[1][2] = 0; \
    matrix[1][3] = 0; \
    matrix[2][0] = 0; \
    matrix[2][1] = 0; \
    matrix[2][2] = 1; \
    matrix[2][3] = 0; \
    matrix[3][0] = 0; \
    matrix[3][1] = 0; \
    matrix[3][2] = 0; \
    matrix[3][3] = 1; \
}

#define MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, element) { \
    result[row_num][col_num] += m1[row_num][element] * m2[element][col_num]; \
}

#define MATRIX_MULTIPLICATION_COLUMN(row_num, col_num) { \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 0) \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 1) \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 2) \
    MATRIX_MULTIPLICATION_ELEMENT(row_num, col_num, 3) \
}

#define MATRIX_MULTIPLICATION_ROW(row_num) { \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 0) \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 1) \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 2) \
    MATRIX_MULTIPLICATION_COLUMN(row_num, 3) \
}

/**
 *    Multiply an NxN matrix with another NxN matrix, store the output in result[N][N]
 */
#define MATRIX_MULTIPLICATION() { \
    INITIALIZE_MATRIX(result); \
    \
    MATRIX_MULTIPLICATION_ROW(0) \
    MATRIX_MULTIPLICATION_ROW(1) \
    MATRIX_MULTIPLICATION_ROW(2) \
    MATRIX_MULTIPLICATION_ROW(3) \
}

/**
 *    Multiply an NxN matrix with another NxN matrix, store the output in result[N][N]
 */
void matrixMultiplication( double m1[N][N], double m2[N][N], double result[N][N] ) {
    MATRIX_MULTIPLICATION();
}


/**
 *   Diagonalize the input matrix
 */
void diagonalize( double matrix[N][N] ) {
    for (int sweep = 0; sweep < 6; sweep++) {
        for (int iter_i = 0; iter_i < N - 1; iter_i++) {
            for (int iter_j = iter_i + 1; iter_j < N; iter_j++) {
                double a = matrix[iter_i][iter_i];
                double b = matrix[iter_i][iter_j];
                double c = matrix[iter_j][iter_i];
                double d = matrix[iter_j][iter_j];

                double thetaLeft;
                double thetaRight;
                double rightRotation[N][N];
                double leftRotation[N][N];

                CALCULATE_THETAS(a, b, c, d);

                INITIALIZE_IDENTITY_MATRIX(rightRotation);
                INITIALIZE_IDENTITY_MATRIX(leftRotation);

                CALCULATE_ROTATIONS(iter_i, iter_j);

                double intermediate[N][N];

                matrixMultiplication(leftRotation, matrix, intermediate);
                matrixMultiplication(intermediate, rightRotation, matrix);
            }
        }
    }
}

int main( int argc, char* argv[]) {
    double m[N][N];

    for (int elem = 1; elem <= N * N; elem++) {
        double temp;
        m[(elem - 1) / 4][(elem - 1) % 4] = atof(argv[elem]);
        // printf("%lf \n", temp);
    }

    // printMatrix(m);

    time_t startTime = clock();

    // for ( int i = 0; i < 100000; i++) {
    diagonalize( m );
    // }

    time_t endTime = clock();

    printMatrix(m);

    printf("elapsed time: %g\n", ((double)(endTime - startTime)/CLOCKS_PER_SEC));

    return 0;
}