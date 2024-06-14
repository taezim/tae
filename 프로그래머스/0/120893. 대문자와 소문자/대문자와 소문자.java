import java.util.*;

class Solution {
    public String solution(String my_string) {
        StringBuilder answer = new StringBuilder();
        
        for(int i=0; i<my_string.length(); i++){
            if(Character.isLowerCase(my_string.charAt(i))){
                answer.append(Character.toUpperCase(my_string.charAt(i)));
            }
            else{
                answer.append(Character.toLowerCase(my_string.charAt(i)));
            }
        }
        
        return answer.toString();
    }
}