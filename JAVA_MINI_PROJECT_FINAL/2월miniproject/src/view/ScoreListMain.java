package view;

import java.util.ArrayList;
import java.util.Scanner;

import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;

import model.ScoreListDAO;
import model.ScoreListDTO;
import model.detailDAO;
import model.detailDTO;

public class ScoreListMain {
	static Scanner sc = new Scanner(System.in);

	public void ScoreListMain() {
		System.out.println("START");
		showScoreList();

		while (true) {
			System.out.print("[1] 팀이름조회하기  [2] 팀이 시도한 문제 리스트 [3] 팀원별 획득 점수 [4] 종료하기 >> ");
			int num = sc.nextInt();

			if (num == 1) {
				PrintTeamName();
			} else if (num == 2) {
				printTeamQusNum();
			} else if (num == 3) {
				PrintTeamGetScore();
			} else if (num == 4) {
				System.out.println("==================");
				break;
			}
		}
	}

	public void showScoreList() {
		System.out.println("==== 점수 조회 ====");
		ScoreListDAO dao = new ScoreListDAO();

		ArrayList<ScoreListDTO> list = dao.ScoreList();

		System.out.printf("%s\t %s\t %n", "팀 이름", "합산획득점수");
		for (int i = 0; i < list.size(); i++) {
			ScoreListDTO dto = list.get(i);
			System.out.print(dto.getTeamN() + "\t");
			System.out.print(dto.getFscore() + "\t");
			System.out.println();
		}

		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartTeamScore(list);

		ChartFrame frame1 = new ChartFrame("팀별 합산 점수", chart);

		frame1.setSize(800, 400);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);

	}

	public void PrintTeamName() {
		System.out.println("조회할 팀 이름 >> ");
		String team = sc.next();

		System.out.println("=======팀원 이름 목록=======");
		// 회원 전체 목록 가져오기 --> DAO의 메소드 형태로 정의
		detailDAO dao1 = new detailDAO();

		ArrayList<detailDTO> list = dao1.detail(team);

		// 가져온 데이터를 출력하기

		// 열 이름 출력
		System.out.println("SNAME");
		// 데이터 출력
		for (int i = 0; i < list.size(); i++) {
			detailDTO dto = list.get(i);
			System.out.print(dto.getSname() + "\t");

			System.out.println();
		}
	}

	public void printTeamQusNum() {
		System.out.println("조회할 팀 이름 >> ");
		String team = sc.next();

		System.out.println("=======시도 문제 목록=======");
		// 회원 전체 목록 가져오기 --> DAO의 메소드 형태로 정의
		detailDAO dao1 = new detailDAO();

		ArrayList<detailDTO> list = dao1.tryQuestion(team);

		// 열 이름 출력
		System.out.println("SNAME");
		// 데이터 출력
		for (int i = 0; i < list.size(); i++) {
			detailDTO dto = list.get(i);
			System.out.print(dto.getQI() + "\t");
			System.out.println();
		}
	}

	public void PrintTeamGetScore() {
		System.out.println("조회할 팀 이름 >> ");
		String team = sc.next();

		System.out.println("=======학생별 획득 점수=======");
		// 회원 전체 목록 가져오기 --> DAO의 메소드 형태로 정의
		detailDAO dao1 = new detailDAO();

		ArrayList<detailDTO> list = dao1.SumStudent(team);

		// 가져온 데이터를 출력하기
		System.out.printf("%s\t %s\t %n", "이름", "합계");
		for (int i = 0; i < list.size(); i++) {
			detailDTO dto = list.get(i);
			System.out.print(dto.getSname() + "\t");

			System.out.print(dto.getQI() + "\t");

			System.out.println();
		}
		
		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartStudentScore(list);

		ChartFrame frame1 = new ChartFrame("학생별 획득 점수", chart);

		frame1.setSize(800, 400);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);
		
	}
}
