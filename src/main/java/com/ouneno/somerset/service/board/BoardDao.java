package com.ouneno.somerset.service.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.somerset.service.domain.Board;

@Mapper
public interface BoardDao {
	
	public List<Board> getBoard(Board board) throws Exception;

}
