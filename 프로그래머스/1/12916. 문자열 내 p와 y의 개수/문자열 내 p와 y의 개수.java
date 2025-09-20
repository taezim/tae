class Solution {
    boolean solution(String s) {
        boolean answer = true;
        int pCount =0;
        int yCount =0;
        String a = s.toLowerCase();
        for(int i=0; i < a.length(); i++){
            if(a.charAt(i) == 'p'){
                pCount++;
            }
            else if(a.charAt(i) == 'y'){
                yCount++;
            }
        }
        if(pCount == yCount){
            answer = true;
        }
        else{
            answer = false;
        }
        return answer;
    }
}