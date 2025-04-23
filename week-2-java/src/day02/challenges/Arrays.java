package day02.challenges;

public class Arrays {
    public static void main(String[] args) {
        int[] arrNum = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        String[] arrStr = {"donout","king","donout"};
//        displayArrays(addOnePlus(arrNum));
//        displayArrays(bubbleSort(arrNum));
//        displayArrays(orderEvenBeforeOdd(arrNum));
//        System.out.println(isPalindrome(arrStr));

    }

//  Function : Display Array
    public static void displayArrays(int[] arr){
        for (int i : arr){
            System.out.print(i + " ");
        }
    }
//  Function : Display String Array
    public static void displayStringArrays(String[] arr){
        for (String i : arr){
            System.out.print(i + " ");
        }
    }

//  Function : Bubble Sort
    public static int[] bubbleSort(int[] arr){
        for (int i = 0; i < arr.length-1; i++) {
            for (int j = 0; j < arr.length-1; j++) {
                if (arr[j] > arr[j+1]){
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
        return arr;
    }

//  No.1
//  Order Even Before Odd
    public static int[] orderEvenBeforeOdd(int[] arr){

        int[] sortedArr = bubbleSort(arr);
        int[] result = new int[arr.length];
        int counter = 0;
        for (int i = 0; i < arr.length; i++) {
            if (sortedArr[i] % 2 == 0){
                result[counter] = sortedArr[i];
                counter++;
            }
        }
        for (int i = 0; i < arr.length; i++) {
            if (sortedArr[i] % 2 != 0){
                result[counter] = sortedArr[i];
                counter++;
            }
        }

        return result;
    }

//  No.2
//  Palindrome Arrays
    public static boolean isPalindrome(String[] arr){
        for (int i = 0; i < arr.length / 2; i++) {
            if (arr[i] != arr[arr.length - i - 1]){
                return false;
            }
        }
        return true;
    }

//  No. 3
//  Plus One
    public static int[] addOnePlus(int[] arr){
        int angka = 0;

        for(int i : arr){
            angka = (angka * 10) + i;
        }
        angka += 1;
        int len = String.valueOf(angka).length();

        int[] newArr = new int[len];

        for (int i = len-1; i > -1; i--) {
            newArr[i] = angka % 10;
            angka = angka/10;
        }

        return newArr;
    }

}
