package com.ouneno.somerset.service.board.Impl;

import java.util.List;

import com.ouneno.somerset.service.domain.Board;

public interface BoardService {
	
	public void addBoard(Board board) throws Exception;
	
	public void deleteBoard(int boardNo) throws Exception;
	
	public void updateBoard(Board board) throws Exception;
	
	public List<Board> getBoardDetail(int boardNo) throws Exception;
	
	public List<Board> getBoardList(int boardCategory) throws Exception;
	
	public List<Board> getTime(int boardNo) throws Exception;

}
