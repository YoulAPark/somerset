package com.ouneno.somerset.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.domain.Product;

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
	public String notice(Board board, Model model) throws Exception {
		List<Board> list = boardService.getNoticeList(board);
		model.addAttribute("board", list);;
		return "board/listNotice";
	}
	
	@RequestMapping("/listNotice")
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
