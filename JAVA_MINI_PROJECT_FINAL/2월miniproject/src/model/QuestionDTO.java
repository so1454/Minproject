package model;

public class QuestionDTO {

	private String QUESTIONID;
	private String QSCORE;
	private String QLEVEL;

	public QuestionDTO() {
	}

	public QuestionDTO(String qUESTIONID, String qSCORE, String qLEVEL) {
		super();
		this.QUESTIONID = qUESTIONID;
		this.QSCORE = qSCORE;
		this.QLEVEL = qLEVEL;

	}

	public String getQUESTIONID() {
		return QUESTIONID;
	}

	public void setQUESTIONID(String qUESTIONID) {
		QUESTIONID = qUESTIONID;
	}

	public String getQSCORE() {
		return QSCORE;
	}

	public void setQSCORE(String qSCORE) {
		QSCORE = qSCORE;
	}

	public String getQLEVEL() {
		return QLEVEL;
	}

	public void setQLEVEL(String qLEVEL) {
		QLEVEL = qLEVEL;
	}
}
