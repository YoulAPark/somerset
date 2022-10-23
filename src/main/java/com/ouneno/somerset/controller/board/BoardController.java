package com.ouneno.somerset.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;

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
	
	@RequestMapping("/notice/{boardCategory}")
	public String notice(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {
		List<Board> list = boardService.getBoardList(boardCategory);
		model.addAttribute("board", list);
		return "board/listNotice";
	}
	
	@RequestMapping("/event/{boardCategory}")
	public String event(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {
		List<Board> list = boardService.getBoardList(boardCategory);
		model.addAttribute("board", list);
		return "board/listEvent";
	}
	
	@RequestMapping("/faq/{boardCategory}")
	public String faq(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {
		List<Board> list = boardService.getBoardList(boardCategory);
		model.addAttribute("board", list);
		return "board/listFaq";
	}
	


	
}
