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
		
		
		String[] W = sb.toString().split(" "); // �������� �ܾ� �и��Ͽ� �迭�� ����
		
		Arrays.sort(W);
		
		System.out.println("���ĺ� ������ ������ �ܾ� : ");
		for(String word:W) {
			System.out.println(word);
		}
		
	
		F.close();
	}

}