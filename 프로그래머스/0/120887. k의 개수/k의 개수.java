class Solution {
    public int solution(int i, int j, int k) {
        int answer = 0;
        String strk = Integer.toString(k);
        for(int a=i; a<=j; a++){
            String stra = Integer.toString(a);
            for(int idx =0; idx < stra.length(); idx++){
                if(stra.charAt(idx) == strk.charAt(0)){
                    answer++;
                }
            }
        }
        return answer;
    }
}