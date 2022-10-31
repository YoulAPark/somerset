package com.ouneno.somerset.service.board;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.somerset.service.domain.Board;

@Mapper
public interface BoardDao {
	
	public String addBoard(Board board) throws Exception;
	
	public List<Board> getBoardList(int boardCategory) throws Exception;
	
	public List<Board> getTime(int boardNo) throws Exception;

}
