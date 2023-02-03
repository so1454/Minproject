package model;

public class CntPQDTO {
	
	int iQId;
	int iSucCnt;
	int iTryCnt;
	int iPercent;
	

	public CntPQDTO() {
		super();
	}

	public CntPQDTO(int iQId, int iSucCnt, int iTryCnt, int iPercent) {
		super();
		this.iQId = iQId;
		this.iSucCnt = iSucCnt;
		this.iTryCnt = iTryCnt;
		this.iPercent = iPercent;
	}
	
	public int getiQId() {
		return iQId;
	}
	public void setiQId(int iQId) {
		this.iQId = iQId;
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
