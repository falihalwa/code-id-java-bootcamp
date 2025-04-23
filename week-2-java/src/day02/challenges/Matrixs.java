package day02.challenges;

public class Matrixs {
    public static void main(String[] args) {
//        displayMatrix(matrixDiagonal1(5));
//        displayMatrix(matrixDiagonal2(5));
//        displayMatrix(squareSumMatrix(8));
//        displayMatrix(squareMatrix(8));
    }

//  Function : Display Matrix
    public static void displayMatrix(int[][] matrix){
        for (int row = 0; row < matrix.length ; row++) {
            for (int col = 0; col < matrix[row].length ; col++) {
                System.out.printf("%4d", matrix[row][col]);
            }
            System.out.println();
        }
    }

//  No.1
//  Matrix Diagonal 1
    public static int[][] matrixDiagonal1(int n){
        int[][]matrix = new int[n][n];

        for (int row = 0; row < matrix.length; row++) {
            for (int col = 0; col < matrix[row].length; col++) {
                if (row == col){
                    matrix[row][col]= row+1;
                }
                if (col > row){
                    matrix[row][col]=10;
                }else if (row > col){
                    matrix[row][col]=20;
                }
            }
        }
        return matrix;
    }

//  No.2
//  Matrix Diagonal 1
    public static int[][] matrixDiagonal2(int n){
        int[][]matrix = new int[n][n];

        for (int row = 0; row < matrix.length; row++) {
            for (int col = 0; col < matrix[row].length; col++) {
                if (row == col){
                    matrix[row][col]= matrix.length - row;
                }
                if (col > row){
                    matrix[row][col]=20;
                }else if (row > col){
                    matrix[row][col]=10;
                }
            }
        }
        return matrix;
    }

//  No. 3
//  Square Sum Matrix
    public static int[][] squareMatrix(int n){
        int[][] matrix = new int[n][n];
        for (int row = 0; row < n; row++) {
            for (int col = 0; col < n; col++) {
                if (col == 0||col == n-1) {
                    matrix[row][col] = row + col;
                } else if(row == 0||row ==n-1){
                    matrix[row][col] = row + col;
                }
            }
        }
        return matrix;
    }

//  No. 4
//  Square Sum Matrix
    public static int[][] squareSumMatrix(int n){
        int[][] matrix = new int[n][n];
        for (int row = 0; row < n - 1; row++) {
            for (int col = 0; col < n - 1; col++) {
                matrix[row][col] = row + col;
                matrix[row][n-1] += matrix[row][col];
                matrix[n-1][row] += matrix[row][col];
            }
        }

        for (int i = 0; i < n - 1; i++) {
            matrix[n-1][n-1] += matrix[n-1][i];
        }
        return matrix;
    }
}
