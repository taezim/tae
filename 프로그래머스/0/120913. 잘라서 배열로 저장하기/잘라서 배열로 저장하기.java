class Solution {
    public String[] solution(String my_str, int n) {
        int cnt = (my_str.length() + n - 1) / n;
        String[] answer = new String[cnt];
        
        for(int i=0; i<cnt; i++){
            int start=i*n;
            int end=Math.min(start + n, my_str.length());
            answer[i] = my_str.substring(start,end);
        }
        return answer;
    }
}