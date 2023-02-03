package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

public class Try_Result_DAO {

	public boolean notNum(String a) {
		
		ArrayList<StudentMemberDTO> Sidlist = new ArrayList<StudentMemberDTO>();
		StudentMemberDAO sdao = new StudentMemberDAO();
		Sidlist = sdao.StudentSelectall();

		String[] array = new String[Sidlist.size()];

		for (int i = 0; i < Sidlist.size(); i++) { // 일단 아이디 등록된거 다 불러오는건 성공함
			array[i] = Sidlist.get(i).getSTUDENTID();
		}

		ArrayList<String> slist = new ArrayList<>(Arrays.asList(array));

		if (!slist.contains(a)) {
			System.out.println("없는 번호 입력");
			return false;
		}else {
			return true;
		}
		

	}

	public boolean notNum2(String b) {

		ArrayList<QuestionDTO> Qidlist = new ArrayList<QuestionDTO>();
		QuestionDAO qdao = new QuestionDAO();

		Qidlist = qdao.SelectALL();

		String[] array = new String[Qidlist.size()];

		for (int i = 0; i < Qidlist.size(); i++) { // 일단 아이디 등록된거 다 불러오는건 성공함
			array[i] = Qidlist.get(i).getQUESTIONID();
		}

		ArrayList<String> slist = new ArrayList<>(Arrays.asList(array));

		if (!slist.contains(b)) {
			System.out.println("없는 번호 입력");
			return false;
		}else {
			return true ;
		}
		

	}

	public int Tryreult(Try_Result_DTO Tdto) { // 성공용

		PreparedStatement psmt = null;
		Connection conn = null;

		int row = 0;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";

			conn = DriverManager.getConnection(url, user_id, user_pw);

			String iQScore = getScroeFromQid(Tdto.getQueId());

			String sql = "insert into TRYRESULT values(TRID_seq.NEXTVAL,?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, Tdto.getStuid());
			psmt.setString(2, Tdto.getQueId());
			psmt.setString(3, Tdto.getIsSuccess());
			psmt.setString(4, iQScore);

//			psmt.setString(4, Tdto.getGetScore());

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

	public int Tryreult2(Try_Result_DTO Tdto) { // 실패용

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
			psmt.setString(4, "0");

//			psmt.setString(4, Tdto.getGetScore());

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

	public String getScroeFromQid(String queId) {
		// TODO Auto-generated method stub

		PreparedStatement psmt = null;
		Connection conn = null;
		ResultSet rs = null;
		String que = null;
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";

			conn = DriverManager.getConnection(url, user_id, user_pw);

			String sql = "select qscore from question where questionid = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, queId);

			rs = psmt.executeQuery();

			while (rs.next()) {
				que = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return que;

	}

}
