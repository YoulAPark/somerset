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
		System.out.println("여기까지는 들어오나용");
		System.out.println("카테고리 확인 : "+board.getBoardCategory());
		System.out.println("타이틀 확인 : "+board.getBoardTitle());
		System.out.println("내용 확인 : "+board.getBoardContent());
		boardService.addBoard(board);
		return true;
	}

}
