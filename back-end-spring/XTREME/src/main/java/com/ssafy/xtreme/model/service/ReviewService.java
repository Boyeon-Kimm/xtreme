package com.ssafy.xtreme.model.service;

import java.util.List;

import com.ssafy.xtreme.model.dto.Review;
import com.ssafy.xtreme.model.dto.SearchCondition;

public interface ReviewService {
//	//해당 대회에 대한 전체 리뷰 조회
//	public List<Review> selectByCompId(int compId);
	
	//리뷰 전체 조회
	public List<Review> selectAll();
	
	//리뷰 상세 조회
	public Review selectByReviewId(int id);
	
	//내가 쓴 후기
	public List<Review> selectByUserId(String userId);
	
	//리뷰 등록
	public int insertReview(Review review);
	
	//리뷰 수정
	public int updateReview(int id, String title, String content);
	
	//리뷰 삭제
	public int deleteReview(int id);
	
	//리뷰 조회수 증가
	public void updateViewCnt(int id);
	
	//리뷰 세부 목록 조회
	public List<Review> searchByCondition(SearchCondition con);
}
