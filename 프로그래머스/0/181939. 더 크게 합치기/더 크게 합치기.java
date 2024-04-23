class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String ch_a = Integer.toString(a);
        String ch_b = Integer.toString(b);
        int ab = Integer.parseInt(ch_a + ch_b);
        int ba = Integer.parseInt(ch_b+ch_a);
        
        if(ab>ba){
            answer=ab;
        }
        else{
            answer=ba;
        }
        return answer;
    }
}