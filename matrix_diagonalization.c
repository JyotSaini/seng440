#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <time.h>

#define N 4

/**
 *     Takes a square matrix
 *     The function prints the contents of the matrix
 */
void printMatrix( double matrix[N][N] ) {
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            //(j,i) because column-first
            printf( "%s%f%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );  //TODO
        }
    }
}

void initializeMatrix( double m[N][N] ) {
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            m[i][j] = 0;
        }    
    }
}

void initializeIdentityMatrix( double m[N][N] ) {
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            if(i == j) {
                m[i][j] = 1;
            } else {
                m[i][j] = 0;
            }
        }    
    }
}


/**
 *    Multiply an NxN matrix with another NxN matrix, store the output in result[N][N]
 */
void matrixMultiplication( double m1[N][N], double m2[N][N], double result[N][N] ) {
    initializeMatrix(result);

    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            for(int k = 0; k < N; k++) {
                result[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }
}


/**
 *   Diagonalize the input matrix
 */
void diagonalize( double matrix[N][N] ) {
    for(int sweep = 0; sweep < 6; sweep++) {
        for (int iter_i = 0; iter_i < N - 1; iter_i++) {
            for (int iter_j = iter_i + 1; iter_j < N; iter_j++) {
                // printf("M:\n");
                // printMatrix(matrix);

                double a = matrix[iter_i][iter_i];
                double b = matrix[iter_i][iter_j];
                double c = matrix[iter_j][iter_i];
                double d = matrix[iter_j][iter_j];

                // printf("abcd: %f\t%f\t%f\t%f\n", a, b, c, d);

                double thetaSum = atan( (c+b) / (d-a) );            // Can d-a ever equal 0?
                double thetaDif = atan( (c-b) / (d+a) );            // Can d+a ever equal 0?
                double thetaLeft = (thetaSum - thetaDif) * 0.5;
                double thetaRight = (thetaSum + thetaDif) * 0.5;

                double rightRotation[N][N];
                double leftRotation[N][N];

                initializeIdentityMatrix(rightRotation);
                initializeIdentityMatrix(leftRotation);

                leftRotation[iter_i][iter_i] = cos(thetaLeft);
                leftRotation[iter_i][iter_j] = -sin(thetaLeft);
                leftRotation[iter_j][iter_i] = sin(thetaLeft);
                leftRotation[iter_j][iter_j] = cos(thetaLeft);

                rightRotation[iter_i][iter_i] = cos(thetaRight);
                rightRotation[iter_i][iter_j] = sin(thetaRight);
                rightRotation[iter_j][iter_i] = -sin(thetaRight);
                rightRotation[iter_j][iter_j] = cos(thetaRight);

                // printf("Left Rotation:\n");
                // printMatrix(leftRotation);

                // printf("Right Rotation:\n");
                // printMatrix(rightRotation);

                double intermediate[N][N];

                matrixMultiplication(leftRotation, matrix, intermediate);
                matrixMultiplication(intermediate, rightRotation, matrix);

                // printf("i: %d, j: %d\n", iter_i, iter_j);
            }
        }
    }
}

int main( int argc, char* argv[]) {
    time_t startTime = clock();
    double m[N][N];

    for (int elem = 1; elem <= N * N; elem++) {
        double temp;
        m[(elem - 1) / 4][(elem - 1) % 4] = atof(argv[elem]);
        // printf("%lf \n", temp);
    }

    // printMatrix(m);

    // for ( int i = 0; i < 100000; i++) {
    diagonalize( m );
    // }

    printMatrix(m);

    printf("elapsed time: %lf\n", ((double)clock() - startTime)/CLOCKS_PER_SEC);

    return 0;
}