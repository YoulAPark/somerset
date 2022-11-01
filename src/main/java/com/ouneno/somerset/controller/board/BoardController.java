package com.ouneno.somerset.controller.board;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	 
	@RequestMapping("/listBoard")
	public String listBoar() throws Exception {
		return "board/listBoard";
	}
	
	@RequestMapping("/getBoardWrite/{boardCategory}")
	public String getBoardWrite(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {
		model.addAttribute("boardCategory", boardCategory);
		return "board/addBoard";
	}
	
	@RequestMapping("/getBoardDetail/{boardNo}")
	public String getBoardDetail(@PathVariable("boardNo") int boardNo, Model model) throws Exception {
		List<Board> list = boardService.getBoardDetail(boardNo);
		model.addAttribute("board", list);
		return "board/getBoardDetail";
	}
	
	@RequestMapping("/updateBoard/{boardNo}")
	public String updateBoard(@PathVariable("boardNo") int boardNo, Model model) throws Exception {
		List<Board> list = boardService.getBoardDetail(boardNo);
		model.addAttribute("board", list);
		return "board/updateBoard";
	}
	
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("boardNo") int boardNo) throws Exception {
		boardService.deleteBoard(boardNo);
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
