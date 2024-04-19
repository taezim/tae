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
		
		
		String[] W = sb.toString().split(" "); // 공백으로 단어 분리하여 배열에 저장
		
		
		
		System.out.println("단어를 입력해주세요.");
		String SS = sc.nextLine();
		for(String word : W) {
			if(word.equals(SS)) {
				count++;
			}
		}
		System.out.println("입력한 단어 : "+SS+" 사용 횟수 : "+count);
		
		F.close();
	}

}