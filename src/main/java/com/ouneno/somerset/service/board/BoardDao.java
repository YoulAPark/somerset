package com.ouneno.somerset.service.board;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.somerset.service.domain.Board;
import com.ouneno.somerset.service.domain.Page;

@Mapper
public interface BoardDao {
	
	public void addBoard(Board board) throws Exception;
	
	public void updateBoard(Board board) throws Exception;
	
	public void deleteBoard(int boardNo) throws Exception;
	
	public List<Board> getBoardDetail(int boardNo) throws Exception;
	
	public List<Board> getBoardList(int boardCategory) throws Exception;
	
	public List<Board> getTime(int boardNo) throws Exception;
	
	public List<Page> getListPaging(Page page);
	
	
	public List<Page> getCategoryList(Page page, int boardCategory);

}
