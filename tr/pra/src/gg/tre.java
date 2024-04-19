package gg;

import java.io.*;
import java.time.*;
import java.util.Scanner;


public class tre {

	public static void main(String[] args) throws Exception {
		FileInputStream fil = new FileInputStream("C:\\please.txt");
		Scanner sc = new Scanner(fil);
		while(sc.hasNext()) {
			System.out.println(sc.nextLine());
		}
	}

}
