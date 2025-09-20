import java.util.*;

class Solution {
    public int[] solution(int[] array, int[][] commands) {
        
        int[] answer = new int[commands.length];
        
        for(int i=0; i<commands.length; i++){
            int start = commands[i][0];
            int end = commands[i][1];
            int cut = commands[i][2];
            
            int idx=0;
            int[] temp = new int[end-start+1];
            for(int j=start-1; j<end; j++){
                temp[idx++]=array[j];
            }
            Arrays.sort(temp);
            
            answer[i] = temp[cut-1];
            
        }
        
        return answer;
    }
}