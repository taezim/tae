class Solution {
    public int solution(int[] num_list) {
        int answer = 0;
        int a =0;
        int b =0;
        for(int i=0; i<num_list.length; i++){
            if(num_list[i]%2 == 0){
                a *= 10;
                a += num_list[i];
            }
            else{
                b *= 10;
                b += num_list[i];
            }
        }
        answer = a+b;
        return answer;
    }
}