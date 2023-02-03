package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QuestionDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;

	public void getConn() {
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";

			conn = DriverManager.getConnection(url, user_id, user_pw);

		} catch (Exception e) {

		}
	}

	public void close() {

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

	}

	// 입력 메소드

	public int Question(String QUESTIONID, String QSCORE, String QLEVEL) {

		int row = 0;

		try {

			getConn();

			String sql = "insert into Question values(? , ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, QUESTIONID);
			psmt.setString(2, QSCORE);
			psmt.setString(3, QLEVEL);

			row = psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			close();

		}

		return row;

	}

	// --------------------------------------------- 입력 끝
	// 전체목록 메소드

	public ArrayList<QuestionDTO> SelectALL() {
		ArrayList<QuestionDTO> list = new ArrayList<>();

		try {

			getConn();

			String sql = "select * from Question";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {

				String uquestionid = rs.getString(1);
				String uscore = rs.getString(2);
				String ulevel = rs.getString(3);

				QuestionDTO dto = new QuestionDTO(uquestionid, uscore, ulevel);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();

		}
		return list;

	}

	// --------------------------------------------- 전체목록 끝
	// 업데이트 메소드

	public int update(QuestionDTO dto) {
		int row = 0;

		try {

			getConn();

			String sql = "update Question set qscore = ?, qlevel=? where questionid =?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQSCORE());
			psmt.setString(2, dto.getQLEVEL());
			psmt.setString(3, dto.getQUESTIONID());

			row = psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		}

		finally {

			close();
		}

		return row;

	}

	// --------------------------------------------- 업데이트 끝

	// 제거 메소드

	public int delete(QuestionDTO dto) {

		int row = 0;

		try {

			getConn();

			String sql = "delete from Question where QuestionID = ? and QScore = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQUESTIONID());
			psmt.setString(2, dto.getQSCORE());

			row = psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			close();
		}

		return row;
	}

}
