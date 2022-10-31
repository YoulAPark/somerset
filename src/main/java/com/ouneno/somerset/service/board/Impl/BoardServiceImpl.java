package com.ouneno.somerset.service.board.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.board.BoardDao;
import com.ouneno.somerset.service.domain.Board;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	public List<Board> getBoardList(int boardCategory) throws Exception {
		List<Board> list = boardDao.getBoardList(boardCategory);
		return list;
	}
	
	// TIMESTAMP
	public List<Board> getTime(int boardNo) throws Exception {
		List<Board> list = boardDao.getTime(1);
		System.out.println("*** : "+list);
		return list;
	}
}
