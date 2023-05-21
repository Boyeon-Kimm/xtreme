package com.ssafy.xtreme.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.xtreme.model.dto.Review;
import com.ssafy.xtreme.model.service.ReviewService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api-review")
@Api(tags = "XTREME_Review")
public class ReviewRestController {
	
	@Autowired
	private ReviewService reviewService;
	
	//해당 대회에 대한 전체 리뷰 조회
	@ApiOperation(value = "리뷰 조회")
	@GetMapping("/review")
	public ResponseEntity<List<Review>> list(int compId){
		List<Review> list = reviewService.selectByCompId(compId);
		
		//해당하는 리뷰 없거나 리스트 비어있을 때
		if(list == null || list.size() == 0) {
			return new ResponseEntity<List<Review>>(HttpStatus.NO_CONTENT);
		}
		//리뷰 존재하면 리스트 출력
		return new ResponseEntity<List<Review>>(list, HttpStatus.OK);
	}
	
	
	//리뷰 상세 조회
	@ApiOperation(value="리뷰 상세 조회")
	@GetMapping("/review/detail/{id}")
	public ResponseEntity<Review> detail(@PathVariable int id){
		Review review = reviewService.selectByReviewId(id);
		
		return new ResponseEntity<Review>(review, HttpStatus.OK);
	}
	
	//내가 쓴 후기
	@ApiOperation(value = "내가 쓴 리뷰 조회")
	@GetMapping("/review/{userId}")
	public ResponseEntity<List<Review>> myList(String userId){
		List<Review> list = reviewService.selectByUserId(userId);
		
		//해당하는 리뷰 없거나 리스트 비어있을 때
		if(list == null || list.size() == 0) {
			return new ResponseEntity<List<Review>>(HttpStatus.NO_CONTENT);
		}
		//리뷰 존재하면 리스트 출력
		return new ResponseEntity<List<Review>>(list, HttpStatus.OK);
	}
	
	//리뷰 등록
	@ApiOperation(value="리뷰 등록")
	@PostMapping("/review")
	public ResponseEntity<Integer> write(Review review){
		int result = reviewService.insertReview(review);
		
		return new ResponseEntity<Integer>(result, HttpStatus.CREATED);
	}
	
	//리뷰 수정
	@ApiOperation(value="리뷰 수정")
	@PutMapping("/review")
	public ResponseEntity<Void> update(@RequestBody Review review){
		reviewService.updateReview(review);
		
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	
	
	//리뷰 삭제
	@ApiOperation(value="리뷰 삭제")
	@DeleteMapping("/review/{id}")
	public ResponseEntity<Integer> delete(@PathVariable int id){
		int result = reviewService.deleteReview(id);
		
		return new ResponseEntity<Integer>(result, HttpStatus.CREATED);
	}

}
