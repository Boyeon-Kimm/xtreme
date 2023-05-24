package com.ssafy.xtreme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.xtreme.model.dto.Participate;
import com.ssafy.xtreme.model.service.ParticipateService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api-participate")
@Api(tags = "XTREME_Participate")
public class ParticipateRestController {
	
	@Autowired
	private ParticipateService participateService;
	
	//참가 신청서 작성
	@ApiOperation(value = "신청서 작성")
	@PostMapping("/write")
	public ResponseEntity<Integer> write(Participate participate){
		int result = participateService.insertParticipate(participate);
		
		return new ResponseEntity<Integer>(result, HttpStatus.CREATED);
	}
	
	//신청 대회 목록 조회
	@ApiOperation(value = "신청 대회 목록 조회")
	@GetMapping("/participate")
	public ResponseEntity<List<Participate>> myParticipate(String playerId){
		List<Participate> list = participateService.selectByUser(playerId);
		
		if(list == null || list.size() == 0) {
			return new ResponseEntity<List<Participate>>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<Participate>>(list, HttpStatus.OK);
	}
	
	//신청 대회 상세 조회
	@ApiOperation(value = "신청 정보 상세 조회")
	@GetMapping("/detail/{id}")
	public ResponseEntity<Participate> detail(@PathVariable int id){
		Participate participate = participateService.selectById(id);
		
		return new ResponseEntity<Participate>(participate, HttpStatus.OK);
	}
	
	//신청 정보 수정
	@ApiOperation(value = "신청 정보 수정")
	@PutMapping("/write")
	public ResponseEntity<Void> updatePart(int id, String teamName, String phone, String playerEmail){
		participateService.updateParticipate(id, teamName, phone, playerEmail);
		
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	
}
