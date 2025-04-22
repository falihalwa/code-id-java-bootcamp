package day01.practices;

public class Iterations {
    public static void main(String[] args) {
        drawbox(5);
    }

    public static void drawbox(int n) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print("* ");
            }
            System.out.println("");
        }
    }

}
