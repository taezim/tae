class Solution {
    public int[] solution(int[] arr) {
        
        if(arr.length == 1){
            int[] answer = new int[]{-1};
            return answer;
        }
        
        int[] answer = new int[arr.length-1];
        int min = arr[0];
    
        for(int i=1; i<arr.length; i++){
            min = Math.min(min, arr[i]);
        }
        
        int idx = 0;
        
        for(int j=0; j<arr.length; j++){
            if(min != arr[j]){
                answer[idx++] = arr[j];
            }

        }
        return answer;
    }
}