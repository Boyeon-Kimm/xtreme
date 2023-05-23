package com.ssafy.xtreme.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.xtreme.model.dao.UserDao;
import com.ssafy.xtreme.model.dto.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public User selectById(String id) {
		return userDao.selectById(id);
	}
	
	//로그인
	@Override
	public User login(String id, String password) {
		User userA = userDao.selectById(id);
		
		if(userA != null && userA.getPassword().equals(password)) {
			return userA;
		}
		
		return null;
	}
	
	//회원가입
	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}
	
	//id 중복체크
	@Override
	public boolean checkDuplicateId(String id) {
		boolean checkUserId = userDao.checkDuplicateId(id);
		return checkUserId;
	}
	
	//개인정보 수정
	@Override
	public int updateUser(String id, String password, String email) {
		User userBoard = userDao.selectById(id);
		userBoard.setPassword(password);
		userBoard.setEmail(email);
//		userBoard.setProfileImg(user.getProfileImg());
		return userDao.updateUser(id, password, email);
	}

	
}
