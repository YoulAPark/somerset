package com.ouneno.mybook.service.user.Impl;

import com.ouneno.mybook.service.domain.User;

public interface UserService {
	
	public User getUser(String id) throws Exception;

	public User addUser(User user) throws Exception;
	
	public User findValidate (User user, int type) throws Exception;
}
