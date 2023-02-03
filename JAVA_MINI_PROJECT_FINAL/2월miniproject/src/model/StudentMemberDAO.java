package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StudentMemberDAO {
	//Data Access Object :  데이터에 접근시켜주는 객체 
		//Data 접근 - DB랑 연결해서 insert,delect,update,select하는 코드들의 모임
		//메소드 형태로 코드를 작성 
		//보통 SQL쿼리를 실행, 실행결과를 리턴 
		
		PreparedStatement psmt = null;
		Connection conn = null;
		ResultSet rs = null;
		
		// 회원가입 메소드 
		public int StudentJoin(String STUDENTID,String SNAME,String TEAMNAME) {
			int row=0;
			try {
				getConn();

				String sql = "insert into student values(?, ?, ?)";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, STUDENTID);
				psmt.setString(2, SNAME);
				psmt.setString(3, TEAMNAME);
				row = psmt.executeUpdate();
				
			} catch (Exception e) {

				e.printStackTrace();
			} finally {

				close();
			}
			return row;
		}
		
		public ArrayList<StudentMemberDTO> StudentSelectall() {

			ArrayList<StudentMemberDTO> list = new ArrayList<StudentMemberDTO>();
			ResultSet rs = null;
			String STUDENTID = "", SNAME = "", TEAMNAME = "";
			try {

				Class.forName("oracle.jdbc.driver.OracleDriver");

				getConn();
				String sql = "select * from student ";
				psmt = conn.prepareStatement(sql);

				rs = psmt.executeQuery();
				if (rs.next()) {

					do {
						STUDENTID = rs.getString("STUDENTID");
						SNAME = rs.getString("SNAME");
						TEAMNAME = rs.getString("TEAMNAME");

						StudentMemberDTO dto = new StudentMemberDTO(STUDENTID, SNAME, TEAMNAME);
						list.add(dto);
					} while (rs.next());

				} else {
					System.out.println("회원 자료가 없습니다. ^^");
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
		
		public int StudentUpdate(String STUDENTID,String SNAME,String TEAMNAME) {
			int row = 0;
			try {
				getConn();
		        String sql = "update student set TEAMNAME = ? ,SNAME =? where STUDENTID = ?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, TEAMNAME);
				psmt.setString(2, SNAME);
				psmt.setString(3, STUDENTID);
			
				
				row = psmt.executeUpdate();

			}catch (Exception e) {
		      
		         e.printStackTrace();
		      } finally {
		         close();
		      }
			
			return row;
		}
		public int StudentDelect(StudentMemberDTO dto) {
			int row=0;
			try {
				getConn();
				String sql = "delete from student where STUDENTID = ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getSTUDENTID());
				
				row = psmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return row;
		}
		public void getConn() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//2. DB연결 통로 생성
				String url = "jdbc:oracle:thin:@gjaischool-b.ddns.net:1525:xe";
		        String user_id = "cgi_3_0131_2";
		        String user_pw = "smhrd2";
		        conn = DriverManager.getConnection(url, user_id, user_pw);
	//동일하게 되는부분 --------------- BASE
				//3. SQL문 준비 
				String sql = "select * from big_member where id = ? and pw = ? ";
				//4. SQL문을 실행준비 상태로 만들기 
				psmt = conn.prepareStatement(sql);
				
				

			} catch (Exception e) {
				e.printStackTrace();
				
			}
		}
		public void close() {
			try {
				if (rs!= null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		
}
