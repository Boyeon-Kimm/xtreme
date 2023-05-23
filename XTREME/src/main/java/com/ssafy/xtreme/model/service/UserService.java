package com.ssafy.xtreme.model.service;

import java.util.List;

import com.ssafy.xtreme.model.dto.User;

public interface UserService {
	//전체 사용자 조회
	public List<User> selectAll();
	
	//로그인(id로 불러오기)
	public User selectById(String id);
	
	//로그인
	public User login(String id, String password);
	
	
	//회원가입(유저 정보 입력) (id 중복 조회 필요)
	public int insertUser(User user);
	
	//id 중복체크
	public boolean checkDuplicateId(String id);
	
	//개인정보 수정
	public int updateUser(String id, String password, String email);
}
