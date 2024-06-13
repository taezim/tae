class Solution {
    public int solution(int[] numbers, int k) {
        int answer = 0;
        int idx = 0;
    
        for(int i=0; i<k-1; i++){
            idx = (idx+2)%numbers.length;
        }
        answer = numbers[idx];
        return answer;
    }
}