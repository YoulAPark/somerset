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
	 
	@RequestMapping("/listBoard")
	public String listBoard() throws Exception {
		return "board/listBoard";
	}
	
	@RequestMapping("/addBoard")
	public String addBoard() throws Exception {
		return "board/addBoard";
	}
	
	// test
	@RequestMapping("/notice/test/{boardNo}")
	public String getTime(@PathVariable("boardNo") int boardNo, Model model) throws Exception {
		List<Board> list = boardService.getTime(boardNo);
		model.addAttribute("board", list);
		return "board/test";
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
