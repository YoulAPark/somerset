package com.ouneno.somerset.controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.board.Impl.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// main.jsp 에서 게시판 눌렀을 때 단순 Navigation
	@RequestMapping("/listBoard")
	public String listBoard() throws Exception {
		return "board/listBoard";
	}
	
	@RequestMapping("/notice")
	public String notice() throws Exception {
		return "board/listNotice";
	}
	
	@RequestMapping("/event")
	public String event() throws Exception {
		return "board/listEvent";
	}
	
	@RequestMapping("/faq")
	public String faq() throws Exception {
		return "board/listFaq";
	}

	
}
