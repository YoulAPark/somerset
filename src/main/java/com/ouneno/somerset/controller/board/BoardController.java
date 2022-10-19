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
	
	@RequestMapping("/listNotice")
	public String listNotice() throws Exception {
		return "board/listNotice";
	}
	
//	@RequestMapping("/notice")
//	public String notice() throws Exception {
//		return "board/notice";
//	}
	
	@RequestMapping("/notice")
	public String notice() throws Exception {
		System.out.println("notice로 이동");
		return "/board/notice";
	}
	
	@RequestMapping("/event")
	public void event() throws Exception {
		System.out.println("event로 이동");
	}
	
	@RequestMapping("/faq")
	public void faq() throws Exception {
		System.out.println("faq로 이동");
	}

}
