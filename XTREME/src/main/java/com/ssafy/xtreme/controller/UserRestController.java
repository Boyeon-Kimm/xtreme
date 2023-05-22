package com.ssafy.xtreme.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ssafy.xtreme.model.dto.User;
import com.ssafy.xtreme.model.service.UserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.parameters.RequestBody;

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
		List<User> userlist = userService.selectAll();
		System.out.println(userlist.size());		
		if(userlist == null || userlist.size() == 0)
			return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
		
		return new ResponseEntity<List<User>>(userlist, HttpStatus.OK);
	}
	
//	//로그인
//	@ApiOperation(value="로그인")
//	@PostMapping("/login")
//	public ResponseEntity<?> login(User user, HttpSession session){
//		User u = userService.selectById(user.getId());
//		
//		if(u != null && u.getPassword().equals(user.getPassword())) {
//			session.setAttribute("loginUser", u);
//			return new ResponseEntity<String>(u.getName(), HttpStatus.OK);
//		}else {
//			return new ResponseEntity<Void>(HttpStatus.UNAUTHORIZED);
//		}
//	}
	
	
	//로그인
	@ApiOperation(value = "로그인")
	@PostMapping("/login")
	public ResponseEntity<?> login(User user, HttpSession session){
		User userA = userService.login(user.getId(), user.getPassword());
		if(userA == null) {
			return new ResponseEntity<Void>(HttpStatus.UNAUTHORIZED);
		}
		
		session.setAttribute("loginUser", userA);
		return new ResponseEntity<String>(userA.getName(), HttpStatus.OK);
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
		
		return new ResponseEntity<Integer>(result, HttpStatus.CREATED);
	}
	
	
	//회원가입에 프사 넣기 잠정 보류
//	@ApiOperation(value = "회원 가입")
//	@PostMapping("/signup")
//	public ResponseEntity<Integer> signup(@ModelAttribute User user,
//	                                      @RequestParam("profileImg") MultipartFile profileImg) {
//	    try {
//	        // 프로필 사진 업로드 처리
//	        if (!profileImg.isEmpty()) {
//	            String fileName = StringUtils.cleanPath(profileImg.getOriginalFilename());
//	            String uploadDir = "경로를 입력하세요"; // 파일을 저장할 경로를 지정해야 합니다.
//
//	            // 파일을 저장하는 로직을 추가하세요.
//	            Files.copy(profileImg.getInputStream(), Paths.get(uploadDir, fileName), StandardCopyOption.REPLACE_EXISTING);
//
//	            // 업로드된 파일 경로를 user 객체에 저장하세요.
//	            user.setProfileImg(uploadDir + "/" + fileName);
//	        }
//
//	        // 회원가입 처리
//	        int result = userService.insertUser(user);
//
//	        return new ResponseEntity<>(result, HttpStatus.OK);
//	    } catch (Exception e) {
//	        return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	    }
//	}


	
	//회원가입 시 아이디 중복 체크
	@ApiOperation(value="중복 췤")
	@PostMapping("/signup/check")
	public ResponseEntity<Boolean> checkDuplicateId(String id){
		boolean isDuplicate = userService.checkDuplicateId(id);
		
		return new ResponseEntity<Boolean>(isDuplicate, HttpStatus.OK);
	}
	
	//개인정보 수정
	@ApiOperation(value="개인정보 수정")
	@PutMapping("/user")
	public ResponseEntity<Void> update(String id, String password, String email){
		userService.updateUser(id, password, email);
		
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	
}
