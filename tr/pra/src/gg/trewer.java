package gg;

import java.io.*;
import java.util.Arrays;
import java.util.Scanner;

public class trewer {

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
		
		Arrays.sort(W);
		
		System.out.println("알파벳 순으로 나열된 단어 : ");
		for(String word:W) {
			System.out.println(word);
		}
		
	
		F.close();
	}

}