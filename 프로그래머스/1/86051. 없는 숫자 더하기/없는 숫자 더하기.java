import java.util.*;

class Solution {
    public int solution(int[] numbers) {
        int answer = 0;
        int sum = 0;
        for(int i=0; i<10; i++){
            sum+=i;
        }
        
        for(int j=0; j<numbers.length; j++){
            answer+=numbers[j];
        }
        
        answer = sum-answer;
        
        return answer;
    }
}