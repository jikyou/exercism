import java.util.stream.Stream;

class Matrix {
    private int[][] row = {};
    private int[][] column = {};

    Matrix(String matrixAsString) {
        this.row = Stream.of(matrixAsString.split("\n"))
                .map(v -> Stream.of(v.split(" "))
                        .mapToInt(Integer::parseInt)
                        .toArray())
                .toArray(int[][]::new);
        this.column = new int[this.row[0].length][this.row.length];
        for (int i = 0; i < this.row[0].length; i++) {
            for (int j = 0; j < this.row.length; j++) {
                this.column[i][j] = this.row[j][i];
            }
        }
    }

    int[] getRow(int rowNumber) {
        return this.row[rowNumber - 1];
    }

    int[] getColumn(int columnNumber) {
        return this.column[columnNumber - 1];
    }
}
