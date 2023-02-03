package model;

public class StudentMemberDTO {
	// DTO : Data Transfar Object : 데이터를 이동할 수 있는 자료형이다.
	// Table마다 한개씩 자료를 가진다.
	// Table 컬럼들을 필드로 가진다고 - Private
	// 필드 : id , pw ,name,tel
	private String STUDENTID;
	private String SNAME;
	private String TEAMNAME;
	
	//기본생성자
	public StudentMemberDTO() {}
	public StudentMemberDTO(String STUDENTID, String SNAME, String TEAMNAME) {
		super();
		this.STUDENTID = STUDENTID;
		this.SNAME = SNAME;
		this.TEAMNAME = TEAMNAME;
	}


	public String getSTUDENTID() {
		return STUDENTID;
	}

	public void setSTUDENTID(String sTUDENTID) {
		STUDENTID = sTUDENTID;
	}

	public String getSNAME() {
		return SNAME;
	}

	public void setSNAME(String sNAME) {
		SNAME = sNAME;
	}

	public String getTEAMNAME() {
		return TEAMNAME;
	}

	public void setTEAMNAME(String tEAMNAME) {
		TEAMNAME = tEAMNAME;
	};
	
	

}
