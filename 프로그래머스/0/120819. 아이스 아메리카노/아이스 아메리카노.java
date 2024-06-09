class Solution {
    public int[] solution(int money) {
        int[] answer = new int[2];
        
        int cup = money/5500;
        System.out.println("잔수 : "+cup);
        answer[0] = cup;
        
        int rchange = money%5500;
        System.out.println("거스름돈 : "+rchange);
        answer[1] = rchange;
        
        return answer;
    }
}