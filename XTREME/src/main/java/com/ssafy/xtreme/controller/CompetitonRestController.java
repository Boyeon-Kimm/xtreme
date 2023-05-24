package com.ssafy.xtreme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.xtreme.model.dto.Competition;
import com.ssafy.xtreme.model.dto.SearchCondition;
import com.ssafy.xtreme.model.service.CompetitionService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api-competition")
@Api(tags = "XTREME_Competition")
public class CompetitonRestController {
	
	@Autowired
	private CompetitionService competitionService;
	
	//전체 대회 목록 조회
	@ApiOperation(value = "전체 대회 목록 조회")
	@GetMapping("/comp")
	public ResponseEntity<List<Competition>> list(){
		List<Competition> list = competitionService.selectAll();
		
		if(list == null || list.size() == 0) {
			return new ResponseEntity<List<Competition>>(HttpStatus.NO_CONTENT);
		}
		
		return new ResponseEntity<List<Competition>>(list, HttpStatus.OK);
	}
	
	//대회 상세 조회
	@ApiOperation(value = "대회 상세 조회")
	@GetMapping("/comp/{id}")
	public ResponseEntity<Competition> detail(@PathVariable int id){
		Competition comp = competitionService.selectById(id);
		
		return new ResponseEntity<Competition>(comp, HttpStatus.OK);
	}
	
	
	//카테고리별 목록 조회
	@ApiOperation(value = "대회 검색")
	@GetMapping("/sort")
	public ResponseEntity<List<Competition>> sortList(SearchCondition con){
		List<Competition> sortList = competitionService.searchByCondition(con);
		
		return new ResponseEntity<List<Competition>>(sortList, HttpStatus.OK);
	}
	
		
	//대회 이름으로 대회 id 뽑아오기
	@ApiOperation(value = "대회 id 찾기")
	@GetMapping("/comp/find/{compName}")
	public ResponseEntity<Integer> findCompId(String compName){
		Competition comp = competitionService.searchByName(compName);
		
		return new ResponseEntity<Integer>(comp.getId(), HttpStatus.OK);
	}
}
