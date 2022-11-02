package com.ouneno.somerset.service.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.domain.Page;

@Mapper
public interface BoardDao {
	
	public void addBoard(Board board) throws Exception;
	
	public void updateBoard(Board board) throws Exception;
	
	public void deleteBoard(int boardNo) throws Exception;
	
	public List<Page> getBoardList( @Param("boardCategory") int boardCategory, @Param("skip") int skip, @Param("amount") int amount );
	
	public int getTotalBoard(int boardCategory) throws Exception;
	
	public List<Board> getBoardDetail(int boardNo) throws Exception;
	
	// 연습용
	public List<Board> getTime(int boardNo) throws Exception;

}
