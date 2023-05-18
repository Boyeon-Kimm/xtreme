package com.ssafy.xtreme.model.service;

import java.util.List;

import com.ssafy.xtreme.model.dao.UserDao;
import com.ssafy.xtreme.model.dto.User;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	@Override
	public List<User> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public User selectById(String id) {
		return userDao.selectById(id);
	}

	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public int updateUser(User user) {
		User userBoard = userDao.selectById(user.getId());
		userBoard.setEmail(user.getEmail());
		userBoard.setName(user.getName());
		userBoard.setProfileImg(user.getProfileImg());
		return userDao.updateUser(user);
	}
	
}
