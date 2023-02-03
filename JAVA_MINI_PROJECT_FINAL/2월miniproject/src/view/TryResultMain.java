package view;

import java.util.Scanner;

import model.Try_Result_DAO;
import model.Try_Result_DTO;

public class TryResultMain {

	public static void TryResultMain() {
		// TODO Auto-generated method stub
		Try_Result_DAO tdao = new Try_Result_DAO();
		Try_Result_DTO tdto = new Try_Result_DTO();

		Scanner sc = new Scanner(System.in);

		System.out.print("학생 아이디 입력 >> ");
		String StuId = sc.next();

		
		
		if(tdao.notNum(StuId)==false) {
			System.out.println("입력하신 학생 ID가 없습니다!");
			System.out.println("학생 ID 등록으로 넘어갑니다!");
		    StudentMain stu= new StudentMain();
			stu.StudentJoin();
		}

		
		///////////////////////
		
		System.out.print("문제 번호 입력 >> ");
		String QueId = sc.next();
		
		///////////////////////
		if(tdao.notNum2(QueId)==false) {
			System.out.println("입력하신 문제번호가 없습니다!");
			System.out.println("문제 등록으로 넘어갑니다!");
			QustionMain qus= new QustionMain();
		     qus.QustionJoin();
		}

		
		
		///////////////////////
		

		System.out.print("정답여부 입력(O,X) >> "); // 만약 성공을 했따고 ㅏ하면
		String isSuccess = sc.next();
		if( isSuccess.equals("O") || isSuccess.equals("o") ) {
			
			tdto = new Try_Result_DTO(StuId, QueId, isSuccess,""); // 이렇게 담아줘도 set으로 담기나봄
			
			System.out.println("해당 문제의 배점 >> " + tdao.getScroeFromQid(QueId));
			
			
			tdao.Tryreult(tdto);
			
			System.out.println("정답으로 등록 완료");
			
		}else if (isSuccess.equals("X") || isSuccess.equals("x")) {
			
			tdto = new Try_Result_DTO(StuId, QueId, isSuccess,"");
			tdao.Tryreult2(tdto);
			
			System.out.println("오답으로 등록완료");
		}
	}
}

