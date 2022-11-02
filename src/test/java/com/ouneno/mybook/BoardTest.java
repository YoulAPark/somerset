package com.ouneno.mybook;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.ouneno.somerset.service.board.Impl.BoardServiceImpl;
import com.ouneno.somerset.service.domain.Board;

@SpringBootTest
public class BoardTest {
	
	@Autowired
	private BoardServiceImpl bs;
	
	//@Test
	public void testTotal(int boardCategory) throws Exception {
		
		Board board = new Board();
		board.setBoardCategory("1");
		
		int total = bs.getTotalBoard(boardCategory);
		System.out.println(total);
		
	}
		
}
