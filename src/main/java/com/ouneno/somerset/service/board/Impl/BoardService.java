package com.ouneno.somerset.service.board.Impl;

import java.util.List;

import com.ouneno.somerset.service.domain.Board;

public interface BoardService {
	
	public List<Board> getBoardList(int boardCategory) throws Exception;
	
}
