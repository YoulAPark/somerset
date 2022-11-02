package com.ouneno.somerset.service.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Page {
	
	private int pageNum;	// 현재 페이지
	private int amount;		// 한 페이지 당 보여질 게시물의 갯수
	private int skip;		// 스킵 할 게시불의 수 // (pageNum-1) * amount
	
	// 기본생성자 
	// Setting - pageNum = 1, amount = 10
	public Page() {
		this(1,10);
		this.skip = 0;
	}

	// 생성자 (원하는 pageNum, 원하는 amount)
	public Page(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;
	}
	
	public void setPageNum(int pageNum) {
		this.skip = (pageNum-1)*this.amount;
		this.pageNum = pageNum;
	}
	
	public void setAmount(int amount) {
		this.skip = (this.pageNum-1)*amount;
		this.amount = amount;
	}
	
}
