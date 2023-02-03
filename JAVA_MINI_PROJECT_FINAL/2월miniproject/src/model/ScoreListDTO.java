package model;

public class ScoreListDTO {

	private String teamN;
	private String Fscore;

	public ScoreListDTO() {
	}

	public ScoreListDTO(String teamN, String Fscore) {
		this.teamN = teamN;
		this.Fscore = Fscore;

	}

	public String getTeamN() {
		return teamN;
	}

	public void setTeamN(String teamN) {
		this.teamN = teamN;
	}

	public String getFscore() {
		return Fscore;
	}

	public void setFscore(String fscore) {
		Fscore = fscore;
	}

}
