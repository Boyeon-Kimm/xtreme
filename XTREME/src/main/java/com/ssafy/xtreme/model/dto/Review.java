package com.ssafy.xtreme.model.dto;

public class Review {
	private int id;			//후기 id
	private String title;	//후기 제목
	private String userId;	//후기 작성자 id
	private String content;	//후기 내용
	private int viewCnt;	//조회수
	private int compId;		//대회 id
	
	public Review() {
	}
	
	public Review(int id, String title, String userId, String content, int viewCnt, int compId) {
		super();
		this.id = id;
		this.title = title;
		this.userId = userId;
		this.content = content;
		this.viewCnt = viewCnt;
		this.compId = compId;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public int getCompId() {
		return compId;
	}

	public void setCompId(int compId) {
		this.compId = compId;
	}

	@Override
	public String toString() {
		return "Review [id=" + id + ", title=" + title + ", userId=" + userId + ", content=" + content + ", viewCnt="
				+ viewCnt + ", compId=" + compId + "]";
	}
	
}
