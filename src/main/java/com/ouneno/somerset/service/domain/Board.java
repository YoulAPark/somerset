package com.ouneno.somerset.service.domain;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Board {
	
	private int boardNo;			// PK 게시글번호
	private String boardCategory;	// 카테고리 1)Notice(공지사항) 2)Event(이벤트) 3)FAQ(문의사항)
	private String boardTitle;		// NN 게시글 제목 100자
	private String boardContent;	// NN 게시글 내용 500자
	private Timestamp boardTime; 	// 게시글 작성시간
	
}
