package tryresult;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

public class Try_Result_DAO {

	
	public String notNum(String a) {
		
		
		ArrayList<StudentMemberDTO> Sidlist = new ArrayList<StudentMemberDTO>();
		StudentMemberDAO sdao = new StudentMemberDAO();
		Sidlist = sdao.StudentSelectall();
		
		String[] array = new String [Sidlist.size()];
		
		for (int i = 0; i < Sidlist.size(); i++) { // 일단 아이디 등록된거 다 불러오는건 성공함
			array[i] = Sidlist.get(i).getSTUDENTID();
		}
		
		ArrayList<String> slist = new ArrayList<>(Arrays.asList(array));
		
		
		if(!slist.contains(a)) {
			System.out.println("없는 번호 입력");
		}
		return a ;
		
	}
	
	
	
	public String notNum2(String b) {
		
		
		ArrayList<QuestionDTO> Qidlist = new ArrayList<QuestionDTO>();
		QuestionDAO qdao = new QuestionDAO();
		
		Qidlist = qdao.SelectALL();
		
		String[] array = new String [Qidlist.size()];
		
		for (int i = 0; i < Qidlist.size(); i++) { // 일단 아이디 등록된거 다 불러오는건 성공함
			array[i] = Qidlist.get(i).getQUESTIONID();
		}
		
		ArrayList<String> slist = new ArrayList<>(Arrays.asList(array));
		
		
		if(!slist.contains(b)) {
			System.out.println("없는 번호 입력");
		}
		return b ;
		
	}
	
	
	
	

	public int Tryreult(Try_Result_DTO Tdto) {

		PreparedStatement psmt = null;
		Connection conn = null;

		int row = 0;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";

			conn = DriverManager.getConnection(url, user_id, user_pw);

			String sql = "insert into TRYRESULT values(TRID_seq.NEXTVAL,?,?,?,?)"; 
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, Tdto.getStuid());
			psmt.setString(2, Tdto.getQueId());
			psmt.setString(3, Tdto.getIsSuccess());
			psmt.setInt(4, Tdto.getGetScore());

			
			row = psmt.executeUpdate();

			// 만약 학생아이디와 문제아이디 안에있는 데이터가 아니라면 실패뜨는 문구부터 해보자

		} catch (Exception e) {
			e.printStackTrace();

		}
		try {
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return row;

	}

}
