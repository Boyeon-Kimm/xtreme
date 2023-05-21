package com.ssafy.xtreme.model.dto;

public class Review {
	private int id;			//후기 id
	private String title;	//후기 제목
	private String userId;	//후기 작성자 id
	private String sports;	//운동 종목
	private String compTitle;	//대회명
	private String content;	//후기 내용
	private String regDate;	//후기 작성 일시(시간(초) 포함)
	private int viewCnt;	//조회수
//	private int compId;		//대회 id
	
	public Review() {
	}
	
	public Review(int id, String title, String userId, String sports, String compTitle, String content, String regDate,
			int viewCnt) {
		super();
		this.id = id;
		this.title = title;
		this.userId = userId;
		this.sports = sports;
		this.compTitle = compTitle;
		this.content = content;
		this.regDate = regDate;
		this.viewCnt = viewCnt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSports() {
		return sports;
	}

	public void setSports(String sports) {
		this.sports = sports;
	}

	public String getCompTitle() {
		return compTitle;
	}

	public void setCompTitle(String compTitle) {
		this.compTitle = compTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	@Override
	public String toString() {
		return "Review [id=" + id + ", title=" + title + ", userId=" + userId + ", sports=" + sports + ", compTitle="
				+ compTitle + ", content=" + content + ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}
	
	
}
