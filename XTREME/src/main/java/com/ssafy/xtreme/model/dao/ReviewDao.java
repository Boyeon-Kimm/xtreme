package com.ssafy.xtreme.model.dao;

import java.util.List;

import com.ssafy.xtreme.model.dto.Review;

public interface ReviewDao {
	//해당 대회에 대한 전체 리뷰 조회
	public List<Review> selectByCompId(int compId);
	
	//리뷰 상세 조회
	public Review selectByReviewId(int id);
	
	//내가 쓴 후기
	public List<Review> selectByUserId(String userId);
	
	//리뷰 등록
	public int insertReview(Review review);
	
	//리뷰 수정
	public void updateReview(Review review);
	
	//리뷰 삭제
	public int deleteReview(int id);
	
	//리뷰 조회수 증가
	public void updateViewCnt(int id);
}
