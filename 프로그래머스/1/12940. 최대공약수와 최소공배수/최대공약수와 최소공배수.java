class Solution {
    public int gcd(int a, int b){
        while(b!=0){
            int tmp = b;
            b = a%b;
            a = tmp;
        }
       return a;
    }
    public int[] solution(int n, int m) {
        int[] answer = new int[2];
        
        //최대공약수 구하기
        int gcd = gcd(n,m);
        answer[0] = gcd;
        
        //최소공배수 구하기
        int lcm = n*m/gcd;
        answer[1] = lcm;
        
        return answer;
    }
}