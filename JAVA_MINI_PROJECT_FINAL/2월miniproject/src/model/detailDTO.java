package model;

public class detailDTO {
	private String Sname;
	private int QI;
	
	
	public int getQI() {
		return QI;
	}
	public void setQI(int qI) {
		QI = qI;
	}
	public detailDTO() {
		
	}
	public detailDTO(String Sname) {
		this.Sname=Sname;
	}
	public String getSname() {
		return Sname;
	}
	public void setSname(String sname) {
		Sname = sname;
	}
}
