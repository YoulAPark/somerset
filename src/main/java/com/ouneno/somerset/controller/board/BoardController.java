package com.ouneno.somerset.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerMapping;

import com.ouneno.somerset.service.board.Impl.BoardService;
import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.domain.Page;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	 
	@RequestMapping("/listBoard")
	public String listBoard() throws Exception {
		return "board/listBoard";
	}
	
	@RequestMapping("/getBoardWrite/{boardCategory}")
	public String getBoardWrite(@PathVariable("boardCategory") int boardCategory, Model model) throws Exception {
		model.addAttribute("boardCategory", boardCategory);
		return "board/addBoard";
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
	
	// 단순네비게이션, if문이 왜 되는지 이해가 안감
	@RequestMapping(value={"/notice/{boardCategory}", "/event/{boardCategory}", "/faq/{boardCategory}"})
	public String getBoardCategory (HttpServletRequest request, @PathVariable("boardCategory") int boardCategory, Model model, Page page ) throws Exception {			
		
		int skip = page.getSkip();
		int amount = page.getAmount();
		List<Page> list = boardService.getBoardList(boardCategory, skip, amount);
		model.addAttribute("board", list);
		
		int boardTotal = boardService.getTotalBoard(boardCategory);
		model.addAttribute("total", boardTotal);
		
		page.setTotal(boardTotal);
		model.addAttribute("page", page);
		
		String path = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);

		if (path.equals(request.getServletPath())) {
			return "board/listNotice";
		} else {
			return null;
		}
	}	
	

	
	@RequestMapping("/getBoardDetail/{boardNo}")
	public String getBoardDetail(@PathVariable("boardNo") int boardNo, Model model) throws Exception {
		List<Board> list = boardService.getBoardDetail(boardNo);
		model.addAttribute("board", list);
		return "board/getBoardDetail";
	}
	
	
	
	
		
}
