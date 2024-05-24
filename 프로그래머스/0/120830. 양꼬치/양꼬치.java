class Solution {
    public int solution(int n, int k) {
        int answer = 0;
        int service = 0;
        if(n/10>=1){
            service = n/10;
            answer = (12000*n) + (2000*(k-service));
        }
        else{
            answer = (12000*n) + (2000*k);
        }
        
        return answer;
    }
}