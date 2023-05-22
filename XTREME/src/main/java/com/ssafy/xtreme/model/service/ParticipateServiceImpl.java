package com.ssafy.xtreme.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.xtreme.model.dao.ParticipateDao;
import com.ssafy.xtreme.model.dto.Participate;

@Service
public class ParticipateServiceImpl implements ParticipateService{
	
	@Autowired
	private ParticipateDao participateDao;
	
	//참가 신청 (신청서 작성)
	@Override
	public int insertParticipate(Participate participate) {
		return participateDao.insertParticipate(participate);
	}

	//신청 대회 조회
	@Override
	public List<Participate> selectByUser(String playerId) {
		return participateDao.selectByUser(playerId);
	}

	
	@Override
	public Participate selectById(int id) {
		return participateDao.selectById(id);
	}

	//신청 정보 수정
	@Override
	public int updateParticipate(int id, String teamName, String phone, String playerEmail) {
		Participate participateBoard = participateDao.selectById(id);
		participateBoard.setTeamName(teamName);
		participateBoard.setPhone(phone);
		participateBoard.setPlayerEmail(playerEmail);
		
		return participateDao.updateParticipate(id, teamName, phone, playerEmail);
	}


}
