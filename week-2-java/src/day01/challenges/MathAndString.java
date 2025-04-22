package day01.challenges;

public class MathAndString {
    public static void main(String[] args) {
//        System.out.println(reverseInt(2147447412));
//        System.out.println(isPalindrome(121));
//        System.out.println(capitalize("halo bang"));
//        System.out.println(isNoDuplicate("abcde"));
        System.out.println(isBrace("())("  ));
    }

//  No.1 Reverse
    public static int reverseInt(int number){
        int reversed = 0;
        while (number != 0){
            reversed = (reversed * 10) + (number % 10);
            number = number/10;
        }
        return reversed;
    }

//  No.2 Palindrome
    public static boolean isPalindrome(int n){
        int number = n;
        int reversed = 0;
        while (number != 0){
            reversed = (reversed * 10) + (number % 10);
            number = number/10;
        }
        return reversed == n;
    }

//  No.3
    public static String capitalize(String text){
        StringBuilder cappedText = new StringBuilder(text);
        for (int i = 0; i < text.length(); i++) {
            if (i == 0 ) {
                cappedText.setCharAt(i, Character.toUpperCase(cappedText.charAt(i)));
            } else if (cappedText.charAt(i) == ' ') {
                cappedText.setCharAt(i+1, Character.toUpperCase(cappedText.charAt(i+1)));
            }
        }
        return new String(cappedText);
    }

//  No.4
    public static boolean isNoDuplicate(String s) {
        for (int i = 0; i < s.length() ; i++) {
            for (int j = i+1; j < s.length(); j++) {
                if (s.charAt(i) == s.charAt(j)) {
                    return false;
                }
            }
        }
        return true;
    }

//  No.5
    public static boolean isBrace(String s){
        int leftBrace = 0;
        int rightBrace = 0;
        for (int i = 0; i <s.length() ; i++) {
            if (s.charAt(i) == '('){
                leftBrace ++;
            } else if (s.charAt(i) == ')') {
                rightBrace ++;
            }
            if (leftBrace < rightBrace) {
                return false;
            }
        }
        if (leftBrace > rightBrace) {
            return false;
        } else {
            return true;
        }
    }

}
