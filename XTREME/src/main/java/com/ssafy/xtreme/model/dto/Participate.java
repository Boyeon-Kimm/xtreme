package com.ssafy.xtreme.model.dto;

public class Participate {
	private int id;				//참가신청폼 id
	private String playerId;	//참가자 id
	private String teamName;	//참가팀 이름
	private String playerName;	//참가자 이름
	private int birth;			//생년월일 6자리
	private String phone;		//연락처(핸드폰 번호)
	private String playerEmail;	//참가자 이메일
	private boolean check;		//개인정보활용 동의 체크
	private int compId;			//참가 대회 id
	
	public Participate() {
	}

	public Participate(int id, String playerId, String teamName, String playerName, int birth, String phone,
			String playerEmail, boolean check, int compId) {
		super();
		this.id = id;
		this.playerId = playerId;
		this.teamName = teamName;
		this.playerName = playerName;
		this.birth = birth;
		this.phone = phone;
		this.playerEmail = playerEmail;
		this.check = check;
		this.compId = compId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlayerId() {
		return playerId;
	}

	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getPlayerName() {
		return playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPlayerEmail() {
		return playerEmail;
	}

	public void setPlayerEmail(String playerEmail) {
		this.playerEmail = playerEmail;
	}

	public boolean isCheck() {
		return check;
	}

	public void setCheck(boolean check) {
		this.check = check;
	}

	public int getCompId() {
		return compId;
	}

	public void setCompId(int compId) {
		this.compId = compId;
	}

	@Override
	public String toString() {
		return "Participate [id=" + id + ", playerId=" + playerId + ", teamName=" + teamName + ", playerName="
				+ playerName + ", birth=" + birth + ", phone=" + phone + ", playerEmail=" + playerEmail + ", check="
				+ check + ", compId=" + compId + "]";
	}
	
}
