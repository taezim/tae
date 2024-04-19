package gg;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;

public class juk {

	public static void main(String[] args) {
		Calendar C = Calendar.getInstance();
		int y = C.get(Calendar.YEAR);
		int M = C.get(Calendar.MONTH)+1;
		int d=C.get(Calendar.DATE);
		
		int a =C.get(Calendar.DAY_OF_YEAR);
		System.out.println(a);
		
		int v = Calendar.DAY_OF_YEAR;
		System.out.println(v);
		
		int hour=C.get(Calendar.HOUR_OF_DAY);
		int m = C.get(Calendar.MINUTE);
		int s = C.get(Calendar.SECOND);
		System.out.println(y+"년"+M+"월"+d+"일");
		System.out.println(hour+"시"+m+"분"+s+"초");
		
				
		}

}
