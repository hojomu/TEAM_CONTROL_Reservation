package control.project.controller;

import java.util.Calendar;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("주민등록번호 입력 : ");
		String regNo = scanner.nextLine();
		scanner.close();
		
		//현재 년도 
		int year = Calendar.getInstance().get(Calendar.YEAR);
		
		// 나이 ex)주민등록번호 앞 두자리 추출 후 변수 저장
		int age=Integer.parseInt(regNo.substring(0,2)); 
		
		// 성별 ex) 주민등록번호 뒷자리 1,2,3,4 뽑아낸 후 변수 저장
		int gender = Integer.parseInt(regNo.substring(7,8)); 
		
		//나이 구하기
		if (gender== 1 || gender== 2) {
			age = year-(1900+age)+1;
		} else if (gender== 3 || gender== 4 ) {
			age = year-(2000+age)+1;
		}
		
		System.out.printf("나이 : %d세", age);
		System.out.println();
		
		//성별판단
		if (gender %2 ==0) {
			System.out.println("성별 : 여");
		} else {
			System.out.println("성별 : 남");
		}
	}
}

