package gg;

public class qwe {

	public static void main(String[] args) {
		String test="abcdedf9kwert9acAjd4";
		char a;
		boolean [] T = new boolean[test.length()];
		for(int i=0; i<test.length(); i++) {
			a=test.charAt(i);
			if((a>=65 && a<=90)||(a>=97 && a<=122)) {
				continue;
				
			}
			else {
				
				System.out.println("특수기호 또는 숫자가 포함되어 있습니다.");
				break;
			
			}
			
		

		}
		System.out.println("문자로만 이루어진 변수입니다.");

	}
}