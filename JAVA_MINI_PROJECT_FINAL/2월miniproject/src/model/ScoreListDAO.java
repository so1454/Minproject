package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ScoreListDAO {

	public ArrayList<ScoreListDTO> ScoreList() {
		ArrayList<ScoreListDTO> list = new ArrayList<>();

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		String teamN = " ", Fscore = " ";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			conn = DriverManager.getConnection(url, user_id, user_pw);

			String sql = "SELECT * FROM VW_SCOREVIEW";

			psmt = conn.prepareStatement(sql);
// result set ; 커서 
			rs = psmt.executeQuery();

			while (rs.next()) {

				String teamN1 = rs.getString("TEAMNAME");
				String Fscore1 = rs.getString("FINALSCORE");

				// DTO에 4가지 정보를 담기
				ScoreListDTO dto = new ScoreListDTO(teamN1, Fscore1);

				// ArrayList : 가변배열

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
				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Sql문 실행 결과 리턴
		return list;
	}

}
