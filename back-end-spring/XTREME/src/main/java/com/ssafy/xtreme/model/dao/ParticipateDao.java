package com.ssafy.xtreme.model.dao;

import java.util.List;

import com.ssafy.xtreme.model.dto.Participate;

public interface ParticipateDao {
	//참가 신청 (신청서 작성)
	public int insertParticipate(Participate participate);
	
	//찜한 대회 목록 조회
//	public List<Participate> selectByLiked(Boolean liked);
	
	//신청 대회 목록 조회
	public List<Participate> selectByUser(String playerId);
	
	//신청서 상세 보기
	public Participate selectById(int id);
	
	
	//신청 정보 수정
	public int updateParticipate(int id, String teamName, String phone, String playerEmail);
}
