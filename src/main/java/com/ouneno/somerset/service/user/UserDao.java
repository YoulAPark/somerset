package com.ouneno.somerset.service.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ouneno.somerset.service.domain.User;

@Mapper
public interface UserDao {
	
	public User getUser(String id);
	
	// [완료] 회원가입
	public User addUser(User user) throws Exception;
	
	public User login(User user) throws Exception;
	
	// [완료] Ajax 유효성검사
	public int findValidate (@Param(value="user") User user, @Param(value = "type") int type) throws Exception;

}
