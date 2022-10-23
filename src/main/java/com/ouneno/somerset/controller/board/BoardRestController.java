package com.ouneno.somerset.controller.board;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.board.Impl.BoardService;

@RestController
@RequestMapping("/board/*")
public class BoardRestController {
	
	@Autowired
	private BoardService boardService;

}
