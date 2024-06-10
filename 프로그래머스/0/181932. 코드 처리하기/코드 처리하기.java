class Solution {
    public String solution(String code) {
        String answer = "";
        int mode = 0;
        
        for(int idx=0; idx<code.length(); idx++){
            if(code.charAt(idx)=='1' && mode==0){
                mode = 1;
            }
            else if(code.charAt(idx)=='1' && mode==1){
                mode = 0;
            }
            
            if(mode == 0){
                if(code.charAt(idx)!='1' && idx%2==0){
                    answer += code.charAt(idx);
                }
            }
            else if(mode == 1){
                if(code.charAt(idx)!='1' && idx%2==1){
                    answer += code.charAt(idx);
                }
            }
        }
        
        if(answer.isEmpty()){
            answer = "EMPTY";
        }
        
        return answer;
    }
}