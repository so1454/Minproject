package model;

public class CntPLevelDTO {
	String strLevel;
	int iSucCnt;
	int iTryCnt;
	int iPercent;
	
	
	
	public CntPLevelDTO() {
		super();
	}
	
	public CntPLevelDTO(String strLevel, int iSucCnt, int iTryCnt, int iPercent) {
		super();
		this.strLevel = strLevel;
		this.iSucCnt = iSucCnt;
		this.iTryCnt = iTryCnt;
		this.iPercent = iPercent;
	}
	
	
	public String getStrLevel() {
		return strLevel;
	}
	public void setStrLevel(String strLevel) {
		this.strLevel = strLevel;
	}
	public int getiSucCnt() {
		return iSucCnt;
	}
	public void setiSucCnt(int iSucCnt) {
		this.iSucCnt = iSucCnt;
	}
	public int getiTryCnt() {
		return iTryCnt;
	}
	public void setiTryCnt(int iTryCnt) {
		this.iTryCnt = iTryCnt;
	}
	public int getiPercent() {
		return iPercent;
	}
	public void setiPercent(int iPercent) {
		this.iPercent = iPercent;
	}
	

}
