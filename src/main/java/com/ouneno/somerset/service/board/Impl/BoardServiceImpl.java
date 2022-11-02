package com.ouneno.somerset.service.board.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.board.BoardDao;
import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.domain.Page;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	public void addBoard(Board board) throws Exception {	
		boardDao.addBoard(board);
	}
	
	public void updateBoard(Board board) throws Exception {
		boardDao.updateBoard(board);
	}
	
	public void deleteBoard(int boardNo) throws Exception {
		boardDao.deleteBoard(boardNo);
	}
	
	public List<Page> getBoardList(int boardCategory, int skip, int amount) {
		List<Page> list = boardDao.getBoardList(boardCategory, skip, amount);
		return list;
	}
	
	public List<Board> getBoardDetail(int boardNo) throws Exception {
		List<Board> list = boardDao.getBoardDetail(boardNo);
		return list;
	}

	// 연습용
	public List<Board> getTime(int boardNo) throws Exception {
		List<Board> list = boardDao.getTime(boardNo);
		return list;
	}
	
}
