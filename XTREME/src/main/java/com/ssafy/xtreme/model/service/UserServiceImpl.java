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

//	@Override
//	public User selectById(String id) {
//		return userDao.selectById(id);
//	}
	
	//로그인
	@Override
	public User login(String id, String password) {
		User userA = userDao.selectById(id);
		
		if(userA != null && userA.getPassword().equals(password)) {
			return userA;
		}
		
		return null;
	}

	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}
	
	@Override
	public boolean checkDuplicateId(String id) {
		boolean checkUserId = userDao.checkDuplicateId(id);
		return checkUserId;
	}
	

	@Override
	public int updateUser(User user) {
		User userBoard = userDao.selectById(user.getId());
		userBoard.setEmail(user.getEmail());
		userBoard.setName(user.getName());
//		userBoard.setProfileImg(user.getProfileImg());
		return userDao.updateUser(user);
	}

	
}
