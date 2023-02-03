package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CntPLevelDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	Statement stmt = null;
	ResultSet rs = null;

	
	public void getConnect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
//			String url = "jdbc:oracle:thin:@localhost:1521:xe";
//			String user_id = "hr";
//			String user_pw = "hr";
			
			String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
			String user_id = "cgi_3_0131_2";
			String user_pw = "smhrd2";
			
			
			conn = DriverManager.getConnection(url, user_id, user_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void closeResource() {
		try {
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
			if (stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
			if (psmt != null && !psmt.isClosed()) {
				psmt.close();
			}
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}	
	
	public ArrayList<CntPLevelDTO> SelectAll() {

//		System.out.println("*** SelectAll Start ***");
		ArrayList<CntPLevelDTO> list = new ArrayList<CntPLevelDTO>();

		String qlevel = "";
		int suc_cnt = 0, tot_cnt = 0, suc_pct = 0;

		getConnect();
		try {
			String sql = 
					" select s.qlevel, s.s_cnt, q.cnt, "
					+ " to_number(to_char( (s_cnt/cnt *100), \'999\')) s_pct "
					+ " from vw_suc_cnt_per_level s,  vw_cnt_per_level q "
					+ " where s.qlevel = q.qlevel "
					+ " order by s.qlevel ";
			
//			select s.qlevel, s.s_cnt, q.cnt
//			from vw_suc_cnt_per_level s,  vw_cnt_per_level q
//			where s.qlevel = q.qlevel;
			

			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {

//				int qid = 0, suc_cnt = 0, tot_cnt = 0, suc_pct = 0;
				
				do {
					qlevel = rs.getString(1);
					suc_cnt = rs.getInt(2);
					tot_cnt = rs.getInt(3);
					suc_pct = rs.getInt(4);

					CntPLevelDTO CntPLevel = new CntPLevelDTO(qlevel, suc_cnt, tot_cnt, suc_pct);
					list.add(CntPLevel);
				} while (rs.next());

			} else {
				System.out.println(" 자료가 없습니다. ^^");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResource();
		}

//		System.out.println("*** SelectAll Finish ***");
		return list;
	}
	
	

}
