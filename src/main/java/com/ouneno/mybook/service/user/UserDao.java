package com.ouneno.mybook.service.user;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.mybook.service.domain.User;

@Mapper
public interface UserDao {
	
	public User getUser(String id);

}
