package com.ssafy.xtreme.model.service;

import java.util.List;

import com.ssafy.xtreme.model.dto.Competition;
import com.ssafy.xtreme.model.dto.SearchCondition;

public interface CompetitionService {
	//전체 대회 목록 조회
	public List<Competition> selectAll();
	
	//대회 상세 조회
	public Competition selectById(int id);
	
	//condition으로 묶어서 처리
	//종목별, 이름별, 신청기간별, 대회일자별 목록 조회
	public List<Competition> searchByCondition(SearchCondition con);
}