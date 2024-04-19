package gg;
import java.util.Random;

public class fds {

	public static void main(String[] args) {
		char[] l = new char[10];
		Random random=new Random();
	      for(int i = 0; i<l.length; i++)
	      {
	         int k = random.nextInt(84)+33;
	         l[i] = (char)k;
	      }
	      
	      String n = String.valueOf(l);
	      System.out.println(n);

	}



}
