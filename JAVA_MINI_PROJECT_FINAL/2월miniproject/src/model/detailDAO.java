package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class detailDAO {

	public ArrayList<detailDTO> detail(String teamName) {
		ArrayList<detailDTO> list = new ArrayList<>();

		Connection conn1 = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		String Sname = " ";
		// String teamName = "Yellow";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			conn1 = DriverManager.getConnection(url, user_id, user_pw);

			String sql = "select distinct s.Studentid, s.sname " + " from TryResult t, Student s"
					+ " where t.studentid = s.studentid" + " and s.teamname = ?";

			psmt = conn1.prepareStatement(sql);
			psmt.setString(1, teamName);

// result set ; 커서 
			rs = psmt.executeQuery();

			while (rs.next()) {

				String Sname1 = rs.getString(2);

				detailDTO dto = new detailDTO(Sname1);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn1 != null)
					conn1.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Sql문 실행 결과 리턴
		return list;
	}

	public ArrayList<detailDTO> tryQuestion(String TeamName) {
		ArrayList<detailDTO> list = new ArrayList<>();

		Connection conn1 = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			conn1 = DriverManager.getConnection(url, user_id, user_pw);

			String sql = " select distinct t.questionid " + " from TryResult t, Student s "
					+ " where t.studentid = s.studentid " + " and s.teamname = ? ";

			psmt = conn1.prepareStatement(sql);
			psmt.setString(1, TeamName);
// result set ; 커서 
			rs = psmt.executeQuery();

			while (rs.next()) {

				int QI = rs.getInt(1);

				detailDTO dto = new detailDTO();
				dto.setQI(QI);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn1 != null)
					conn1.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Sql문 실행 결과 리턴
		return list;
	}

	public ArrayList<detailDTO> SumScore(String TeamName) {
		ArrayList<detailDTO> list = new ArrayList<>();

		Connection conn1 = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			conn1 = DriverManager.getConnection(url, user_id, user_pw);

			String sql = " select t.questionid, sum(t.getscore) " + " from TryResult t, Student s "
					+ " where t.studentid = s.studentid " + " and s.teamname = ? " + " group by t.questionid ";

			psmt = conn1.prepareStatement(sql);
			psmt.setString(1, TeamName);
// result set ; 커서 
			rs = psmt.executeQuery();

			while (rs.next()) {

				int QI = rs.getInt(2);

				detailDTO dto = new detailDTO();
				dto.setQI(QI);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn1 != null)
					conn1.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Sql문 실행 결과 리턴
		return list;
	}

	public ArrayList<detailDTO> SumStudent(String TeamName) {
		ArrayList<detailDTO> list = new ArrayList<>();

		Connection conn1 = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			conn1 = DriverManager.getConnection(url, user_id, user_pw);

			String sql = " select t.studentid,s.sname, sum(t.getscore) " + " from TryResult t, Student s "
					+ " where t.studentid = s.studentid " + " and s.teamname = ? " + " group by t.studentid,s.sname ";

			psmt = conn1.prepareStatement(sql);
			psmt.setString(1, TeamName);
// result set ; 커서 
			rs = psmt.executeQuery();

			while (rs.next()) {
				String name = rs.getNString(2);
				int QI = rs.getInt(3);

				detailDTO dto = new detailDTO(name);
				dto.setQI(QI);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn1 != null)
					conn1.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Sql문 실행 결과 리턴
		return list;
	}
}
