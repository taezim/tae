class Solution {
    public int solution(int[] array) {
        int answer = 0;
        int max = 0;
        boolean multipleModes = false;
        
        for(int i=0; i<array.length; i++){
            int count = 0;
            for(int j=0; j<array.length; j++){
                if(array[i] == array[j]){
                    count++;
                }
            }
            if(count > max){
                max = count;
                answer = array[i];
                multipleModes = false;
            }
            else if(count == max && answer != array[i]){
                multipleModes = true;
            }
            
        }
        
        if(multipleModes){
            answer = -1;
        }
        
        return answer;
    }
}