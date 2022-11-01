package com.ouneno.somerset.controller.board;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;

@RestController
@RequestMapping("/board/*")
public class BoardRestController {
	
	@Autowired
	private BoardService boardService;
	
	@PostMapping("/json/addBoard")
	public boolean addBoard(@RequestBody Board board) throws Exception {
		boardService.addBoard(board);
		return true;
	}
	
	@PostMapping("/json/updateBoard")
	public boolean updateBoard(@RequestBody Board board) throws Exception {
		boardService.updateBoard(board);
		return true;
	}

}
