package com.ouneno.somerset.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;

@RestController
@RequestMapping("/board/*")
public class BoardRestController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping( value = "getBoardCategory/{boardCategory}")
	public String getBoardCategory(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {	
		List<Board> list = boardService.getBoardCategory(boardCategory);
		System.out.println("list확인 : "+list);
		model.addAttribute("board", list);
		System.out.println("실행**");
		return "board/listNotice";
	}

}
