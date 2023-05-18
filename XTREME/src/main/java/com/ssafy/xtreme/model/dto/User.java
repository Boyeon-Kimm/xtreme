package com.ssafy.xtreme.model.dto;

public class User {
	private String id;			//사용자 id
	private String password;	//사용자 비밀번호
	private String email;		//사용자 email
	private String name;		//사용자 이름
	private int age;			//사용자 나이
	private String profileImg;	//사용자 프사
	
	public User() {
	}

	public User(String id, String password, String email, String name, int age, String profileImg) {
		super();
		this.id = id;
		this.password = password;
		this.email = email;
		this.name = name;
		this.age = age;
		this.profileImg = profileImg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", email=" + email + ", name=" + name + ", age=" + age
				+ ", profileImg=" + profileImg + "]";
	}
}
