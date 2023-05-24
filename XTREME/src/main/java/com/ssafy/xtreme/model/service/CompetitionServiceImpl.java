package com.ssafy.xtreme.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.xtreme.model.dao.CompetitionDao;
import com.ssafy.xtreme.model.dto.Competition;
import com.ssafy.xtreme.model.dto.SearchCondition;

@Service
public class CompetitionServiceImpl implements CompetitionService {

	@Autowired
	private CompetitionDao competitionDao;
	
	//전체 대회 목록 조회
	@Override
	public List<Competition> selectAll() {
		return competitionDao.selectAll();
	}
	
	//대회 상세 조회
	@Override
	public Competition selectById(int id) {
		return competitionDao.selectById(id);
	}

	//세부 목록별 검색
	@Override
	public List<Competition> searchByCondition(SearchCondition con) {
		return competitionDao.searchByCondition(con);
	}

	@Override
	public Competition searchByName(String compName) {
		return competitionDao.searchByName(compName);
	}
	
	@Override
	public int findCompId(String CompName) {
		return competitionDao.findCompId(CompName);
	}


}
