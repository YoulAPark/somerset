package com.ouneno.somerset.service.board.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.board.BoardDao;
import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.order.ProductDao;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	public List<Board> getNoticeList(Board board) throws Exception {
		List<Board> list = boardDao.getBoard(board);
		return list;
	}
	
	public List<Board> getBoardCategory(int boardCategory) throws Exception {
		List<Board> list = boardDao.getBoardCategory(boardCategory);
		return list;
	}
}
