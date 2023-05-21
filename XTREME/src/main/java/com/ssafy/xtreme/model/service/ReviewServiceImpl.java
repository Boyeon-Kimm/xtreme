package com.ssafy.xtreme.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.xtreme.model.dao.ReviewDao;
import com.ssafy.xtreme.model.dto.Review;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	
//	//해당 대회에 대한 전체 리뷰 조회
//	@Override
//	public List<Review> selectByCompId(int compId) {
//		return reviewDao.selectByCompId(compId);
//	}

	//리뷰 전체 조회
	@Override
	public List<Review> selectAll() {
		return reviewDao.selectAll();
	}

	//리뷰 상세 조회
	@Override
	public Review selectByReviewId(int id) {
		this.updateViewCnt(id);
		return reviewDao.selectByReviewId(id);
	}

	//내가 쓴 후기
	@Override
	public List<Review> selectByUserId(String userId) {
		return reviewDao.selectByUserId(userId);
	}

	//리뷰 등록
	@Override
	public int insertReview(Review review) {
		return reviewDao.insertReview(review);
	}

	//리뷰 수정
	//여기서 만약 특정 부분만 수정하고 싶으면?
	@Override
	public void updateReview(Review review) {
		Review reviewBoard = reviewDao.selectByReviewId(review.getId());
		reviewBoard.setTitle(review.getTitle());
		reviewBoard.setContent(review.getContent());
		reviewDao.updateReview(review);
	}

	//리뷰 삭제
	@Override
	public int deleteReview(int id) {
		return reviewDao.deleteReview(id);
	}

	//리뷰 조회수 증가
	@Override
	public void updateViewCnt(int id) {
		Review review = reviewDao.selectByReviewId(id);
		review.setViewCnt(review.getViewCnt()+1);
		reviewDao.updateViewCnt(id);
	}


}
