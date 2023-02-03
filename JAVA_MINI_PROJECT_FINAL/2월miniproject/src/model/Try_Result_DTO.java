package model;

public class Try_Result_DTO {

	private String Stuid ;
	private String QueId ;
	private String isSuccess ;
	private String getScore ;
	
	
	
	
	public Try_Result_DTO(String stuid, String queId, String isSuccess, String getScore) {
		super();
		Stuid = stuid;
		QueId = queId;
		this.isSuccess = isSuccess;
		this.getScore = getScore;
	}
	
	
	// 기본생성자

	public Try_Result_DTO() {
	}



	public String getStuid() {
		return Stuid;
	}
	public void setStuid(String stuid) {
		Stuid = stuid;
	}
	public String getQueId() {
		return QueId;
	}
	public void setQueId(String queId) {
		QueId = queId;
	}
	public String getIsSuccess() {
		return isSuccess;
	}
	public void setIsSuccess(String isSuccess) {
		this.isSuccess = isSuccess;
	}
	public String getGetScore() {
		return getScore;
	}
	public void setGetScore(String getScore) {
		this.getScore = getScore;
	}
	
	
		
	}


