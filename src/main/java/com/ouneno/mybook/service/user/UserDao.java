package com.ouneno.mybook.service.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ouneno.mybook.service.domain.User;

@Mapper
public interface UserDao {
	
	public User getUser(String id);
	
	public User addUser(User user) throws Exception;
	
	public User findValidate (@Param(value="user") User user, @Param(value = "type") int type) throws Exception;

}
