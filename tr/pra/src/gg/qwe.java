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
				
				System.out.println("Ư����ȣ �Ǵ� ���ڰ� ���ԵǾ� �ֽ��ϴ�.");
				break;
			
			}
			
		

		}
		System.out.println("���ڷθ� �̷���� �����Դϴ�.");

	}
}