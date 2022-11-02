package com.ouneno.mybook;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;

import com.ouneno.somerset.service.board.Impl.BoardServiceImpl;

import java.util.List;

@SpringBootTest
public class BoardTest {
	
	@Autowired
	private BoardServiceImpl bs;

	@Test
	public void unitTest1() throws Exception {

		List list = bs.getBoardDetail(1);
		System.out.println(list);
		
	}
	
	
	//@Test
//	public void testGetListPaging() throws Exception {		
//		Page page = new Page();
//		System.out.println("test : "+page);
//		page.setPageNum(9);
//		System.out.println("test2 : "+page);
//		System.out.println(boardService.getListPaging(page));
		//String test = boardService.getListPaging(page);
		
		/*
		 *  page.setPageNum(1)
		 *  현재 페이지 pageNum = 1
		 *  한 페이지 당 보여질 개시물의 수 = 10
		 *  스킵할 게시물의 수 skip = 0
		 */
		
		/*
		 * 2
		 */
		
		/*
		private int pageNum;	// 현재 페이지
		private int amount;		// 한 페이지 당 보여질 게시물의 갯수
		private int skip;		// 스킵 할 게시불의 수 // (pageNum-1) * amount
		
	}*/
	
	//@Test
//	public void test()  {
//		Page page = new Page();
//		page.setPageNum(3);
//		
//		System.out.println(boardService.getCategoryList(page));
//	}
		
}
