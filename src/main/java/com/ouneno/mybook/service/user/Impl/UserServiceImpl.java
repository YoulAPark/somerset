package com.ouneno.mybook.service.user.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.mybook.service.domain.User;
import com.ouneno.mybook.service.user.UserDao;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public User getUser(String userId) throws Exception {
		System.out.println("작업순서확인 : "+this.getClass());
		System.out.println("UserServiceImpl getUser() : "+userId);
		return userDao.getUser(userId);
	}
	
	public User addUser(User user) throws Exception {
		return userDao.addUser(user);
	}
	
	public User findValidate (User user) throws Exception {
		
		/*
		 *  1. userNickname
		 *  2. userId
		 *  3. userEmail
		 */
		int type;
		
		if(user.getUserNickname()!=null) {
			type = 1;
		} else if (user.getUserId()!=null) {
			type = 2;
		} else if (user.getUserEmail()!=null) {
			type = 3;
		}
		
		return user;
	}
	
}
