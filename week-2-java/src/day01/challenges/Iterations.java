package day01.challenges;

public class Iterations {
    public static void main(String[] args) {
//        number1(5);
//        number2(5);
//        number3(5);
//        number4(5);
//        number5(5);
//        number6(5);
//        number7(8);
//        number8(8);
//        number9(9);
        number10(9);
    }

//  No.1
    public static void number1(int n) {
        int x = 1;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(x + " ");
                x++;
            }
            System.out.println();
        }
    }

//  No.2
    public static void number2(int n) {
        for (int i = 0; i < n; i++) {
            int x = i+1;
            for (int j = 0; j <= i; j++) {
                System.out.print(x + " ");
                x++;
            }
            System.out.println();
        }
    }

//  No.3
    public static void number3(int n) {
        int counter = n;
        for (int i = 0; i < n; i++) {
            int x = i+1;
            for (int j = 0; j < counter; j++) {
                System.out.print(x + " ");
                x++;
            }
            counter--;
            System.out.println();
        }
    }

//  No.4
    public static void number4(int n) {
        int counter = n;
        for (int i = 0; i < n; i++) {
            int x = i+1;
            for (int k = 0; k < i; k++) {
                System.out.print("  ");
            }
            for (int j = 0; j < counter; j++) {
                System.out.print(x + " ");
                x++;
            }
            counter--;
            System.out.println();
        }
    }

//  No.5
    public static void number5(int n) {
        int counter = n;
        for (int i = 0; i < n; i++) {
            for (int k = 0; k < i; k++) {
                System.out.print("20 ");
            }
            for (int j = 0; j < counter; j++) {
                if (j == 0) {System.out.print(i+1 + " ");}
                else {System.out.print("10 ");}
            }
            counter--;
            System.out.println();
        }
    }

//  No.6
    public static void number6(int n) {
        int counter = n;
        for (int i = 0; i < n; i++) {
            for (int k = 0; k < i; k++) {
                System.out.print("10 ");
            }
            for (int j = 0; j < counter; j++) {
                if (j == 0) {System.out.print(counter + " ");}
                else {System.out.print("20 ");}
            }
            counter--;
            System.out.println();
        }
    }
//  No.7
    public static void number7(int n) {
        int counter = n;
        for (int i = 0; i < n; i++) {
            int x = counter;
            for (int j = 1; j < counter; j++) {
                System.out.print(x + " ");
                x--;
            }
            for (int j = 0; j < counter; j++) {
                System.out.print(x + " ");
                x++;
            }
            counter--;
            System.out.println();
        }
    }
//  No.8
    public static boolean isPrime(int potentialPrime){
        for (int i = 2; i < potentialPrime ; i++) {
            if (potentialPrime % i ==0){
                return false;
            }
        }
        return true;
    }
    public static void number8(int n){
        for (int i = 2; i < n; i++) {
            if(isPrime(i)){
                System.out.printf(" %d ",i);
            }
        }
    }

//  No.9
    public static void number9(int n) {
        for (int i = 0; i < n; i++) {
            int counter = n;
            for (int j = 0; j < n; j++) {
                if(i % 2 == 0){
                    System.out.print(counter-j + " ");
                } else {
                    System.out.print(j+1 + " ");
                }
            }
            System.out.println();
        }
    }

//  No.10
    public static void number10(int n) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i % 2 == 0) {
                   if (j % 2 == 0){
                       System.out.print("- ");
                   } else {
                       System.out.print(j+1 + " ");
                   }
                } else {
                    if (j % 2 == 0){
                        System.out.print(j+1 + " ");
                    } else {
                        System.out.print("- ");
                    }
                }
            }
            System.out.println();
        }
    }
}
