package main;

import java.util.Scanner;

import view.QustionMain;
import view.ScoreListMain;
import view.StudentMain;
import view.TryResultMain;
import view.ViewMain;

public class main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("|| YELLOW TEAM MINIPROJECT!");
		System.out.println("|| WELLCOM to menager to javaproject!");
		System.out.println("");
		
		System.out.printf("  /'\\_/`\\    /\\  _`\\    /\\ \\/\\ \\    /\\ \\/\\ \\ %n"
				+ " /\\      \\   \\ \\ \\L\\_\\  \\ \\ `\\\\ \\   \\ \\ \\ \\ \\ %n"
				+ " \\ \\ \\__\\ \\   \\ \\  _\\L   \\ \\ , ` \\   \\ \\ \\ \\ \\ %n"
				+ "  \\ \\ \\_/\\ \\   \\ \\ \\L\\ \\  \\ \\ \\`\\ \\   \\ \\ \\_\\ \\ %n"
				+ "   \\ \\_\\\\ \\_\\   \\ \\____/   \\ \\_\\ \\_\\   \\ \\_____\\%n"
				+ "    \\/_/ \\/_/    \\/___/     \\/_/\\/_/    \\/_____/%n");
		
		System.out.println("");
		while(true) {
			System.out.print("SELECT MENU : 1] 학생관리 2]문제등록 3]결과등록 4]점수조회 5]통계조회 6]종료  >>");
			int scanInt = sc.nextInt();
			
			if(scanInt == 1) {
				StudentMain stu = new StudentMain();
				stu.StudentMain();
				System.out.println("");
				
			} else if(scanInt ==2) {
				QustionMain qus = new QustionMain();
				qus.QustionMain();
				System.out.println("");
				
			} else if(scanInt ==3) {
				TryResultMain.TryResultMain();
				System.out.println("");
				
			} else if(scanInt ==4){
				ScoreListMain score = new ScoreListMain();
				score.ScoreListMain();
				System.out.println("");
				
			} else if(scanInt ==5) {
				ViewMain view = new ViewMain();
				view.ViewMain();
				System.out.println("");
				
			}else if(scanInt ==6) {
				System.out.println();
				System.out.println("");
				break;
			}
		}
		
		
		
		
	}
}
