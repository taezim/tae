package gg;

import java.io.*;
import java.util.Scanner;

public class ewre {

	public static void main(String[] args) throws Exception 
	{
		Scanner sc=new Scanner(System.in);
		FileInputStream F = null;
		F = new FileInputStream("C://please.txt");
		
		StringBuilder sb = new StringBuilder();
		int index=0;
		int data;
		int count=0;
		
		while((data = F.read()) != -1) {
			char c = (char) data;
			String word = String.valueOf(c);
			
			sb.append(word);
			
		}
		
		
		String[] W = sb.toString().split(" "); // �������� �ܾ� �и��Ͽ� �迭�� ����
		
		
		
		System.out.println("�ܾ �Է����ּ���.");
		String SS = sc.nextLine();
		for(String word : W) {
			if(word.equals(SS)) {
				count++;
			}
		}
		System.out.println("�Է��� �ܾ� : "+SS+" ��� Ƚ�� : "+count);
		
		F.close();
	}

}