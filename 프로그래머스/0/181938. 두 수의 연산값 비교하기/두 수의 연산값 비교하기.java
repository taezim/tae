class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String A = Integer.toString(a)+Integer.toString(b);
        int ab = Integer.parseInt(A);
        int AB2 = 2*a*b;
        
        if(ab>=AB2){
            answer=ab;
        }
        else{
            answer=AB2;
        }
        return answer;
    }
}