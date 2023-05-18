package com.ssafy.xtreme.model.dao;

import java.util.List;

import com.ssafy.xtreme.model.dto.User;

public interface UserDao {
	//전체 사용자 조회
	public List<User> selectAll();
	
	//로그인(id로 불러오기)
	public User selectById(String id);
	
	//회원가입(유저 정보 입력) (id 중복 조회 필요)
	public int insertUser(User user);
	
	//개인정보 수정
	public int updateUser(User user);
}
