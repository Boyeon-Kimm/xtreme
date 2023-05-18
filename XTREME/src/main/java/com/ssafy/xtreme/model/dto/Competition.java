package com.ssafy.xtreme.model.dto;

public class Competition {
	private int id;				//대회 id
	private String compSports;	//어떤 운동 관련 대회인지
	private String compName;	//대회명
	private String host;		//대회 주최
	private String place;		//대회 장소
	private String compDay;		//대회 날짜
	private String registDate;	//대회 신청기간
	private int fee;			//참가비용
	private int compAge;		//참가 가능 연령
	private String compUrl;		//대회 공식 사이트
	private String compImg;		//관련 이미지
	private boolean liked;		//찜하기 (내가 찜한 대회 목록)
	private String userId;		//사용자 id
	
	public Competition() {
	}

	public Competition(int id, String compSports, String compName, String host, String place, String compDay,
			String registDate, int fee, int compAge, String compUrl, String compImg, boolean liked, String userId) {
		super();
		this.id = id;
		this.compSports = compSports;
		this.compName = compName;
		this.host = host;
		this.place = place;
		this.compDay = compDay;
		this.registDate = registDate;
		this.fee = fee;
		this.compAge = compAge;
		this.compUrl = compUrl;
		this.compImg = compImg;
		this.liked = liked;
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompSports() {
		return compSports;
	}

	public void setCompSports(String compSports) {
		this.compSports = compSports;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCompDay() {
		return compDay;
	}

	public void setCompDay(String compDay) {
		this.compDay = compDay;
	}

	public String getRegistDate() {
		return registDate;
	}

	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	public int getCompAge() {
		return compAge;
	}

	public void setCompAge(int compAge) {
		this.compAge = compAge;
	}

	public String getCompUrl() {
		return compUrl;
	}

	public void setCompUrl(String compUrl) {
		this.compUrl = compUrl;
	}

	public String getCompImg() {
		return compImg;
	}

	public void setCompImg(String compImg) {
		this.compImg = compImg;
	}

	public boolean isLiked() {
		return liked;
	}

	public void setLiked(boolean liked) {
		this.liked = liked;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Competition [id=" + id + ", compSports=" + compSports + ", compName=" + compName + ", host=" + host
				+ ", place=" + place + ", compDay=" + compDay + ", registDate=" + registDate + ", fee=" + fee
				+ ", compAge=" + compAge + ", compUrl=" + compUrl + ", compImg=" + compImg + ", liked=" + liked
				+ ", userId=" + userId + "]";
	}

}
