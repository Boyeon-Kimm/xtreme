package com.ssafy.xtreme.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.xtreme.model.dto.User;
import com.ssafy.xtreme.model.service.UserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api-user")
@Api(tags = "XTREME_User")
public class UserRestController {
	
	@Autowired
	private UserService userService;
	
	//전체 사용자 조회
	@ApiOperation(value="전체 사용자 목록 조회")
	@GetMapping("/users")
	public ResponseEntity<List<User>> userList() {
		List<User> list = userService.selectAll();
				
		if(list == null || list.size() == 0)
			return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
		
		return new ResponseEntity<List<User>>(list, HttpStatus.OK);
	}
	
	//로그인
	@ApiOperation(value="로그인")
	@PostMapping("/login")
	public ResponseEntity<?> login(User user, HttpSession session){
		User u = userService.selectById(user.getId());
		
		if(u != null && u.getPassword().equals(user.getPassword())) {
			session.setAttribute("loginUser", u);
			return new ResponseEntity<String>(u.getName(), HttpStatus.OK);
		}else {
			return new ResponseEntity<Void>(HttpStatus.UNAUTHORIZED);
		}
	}
	
	// 로그아웃
	@ApiOperation(value="로그아웃")
	@GetMapping("/logout")
	public ResponseEntity<Void> logout(HttpSession session){
		session.removeAttribute("loginUser");
		
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	
	//회원가입
	@ApiOperation(value="회원 가입")
	@PostMapping("/signup")
	public ResponseEntity<Integer> signup(User user){
		int result = userService.insertUser(user);
		
		return new ResponseEntity<Integer>(result, HttpStatus.OK);
	}
	
	//개인정보 수정
	
}
