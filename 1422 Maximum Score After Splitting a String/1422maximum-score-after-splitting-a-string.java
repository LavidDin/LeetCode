public class Solution {
    public int maxScore(String s) {
        int max = 0;

        for (int i = 1; i < s.length(); i++) {
            int leftCount = 0;
            int rightCount = 0;

            for (int j = 0; j < i; j++) {
                if (s.charAt(j) == '0') {
                    leftCount++;
                }
            }

            for (int j = i; j < s.length(); j++) {
                if (s.charAt(j) == '1') {
                    rightCount++;
                }
            }

            int sum = leftCount + rightCount;
            if (sum > max) {
                max = sum;
            }
        }

        return max;
    }
}
