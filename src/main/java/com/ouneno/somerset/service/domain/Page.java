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

	private int startPage;		// 시작 페이지
	private int endPage;		// 끝 페이지
	private boolean prev, next;	// 이전 페이지, 다음 페이지 존재유무
	private int total;			// 전체 게시물 
	
	// 기본생성자 
	// Setting - pageNum = 1, amount = 10
	public Page() {
		this(1,10);
		this.skip = 0;
		this.total = total;
		
		// 시작 페이지
		this.startPage = this.endPage-9;
		// 마지막 페이지
		this.endPage = (int)(Math.ceil(pageNum)/10.0)*10;
		
		
		// 전체 마지막 페이지
		int realEnd = (int)(Math.ceil(total*1.0/amount));
		
		// 전체 마지막 페이지(realEnd)가 화면에 보이는 마지막페이지(endPage)보다 작은 경우, 보이는 페이지(endPage) 값 조정
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		// 시작페이지(startPage)의 값이 1보다 클 경우
		this.prev = this.startPage > 1;
		// 끝페이지(endPage)의 값이 1보다 큰 경우
		this.next = this.endPage < realEnd;
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
