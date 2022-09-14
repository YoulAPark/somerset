package com.ouneno.somerset.service.user.Impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.domain.User;
import com.ouneno.somerset.service.user.UserDao;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public User getUser(String userId) throws Exception {
		System.out.println("작업순서확인 : "+this.getClass());
		System.out.println("UserServiceImpl getUser() : "+userId);
		return userDao.getUser(userId);
	}
	
	// [완료] 회원가입
	public User addUser(User user) throws Exception {
		return userDao.addUser(user);
	}
	
	public User login(User user) throws Exception {
		return userDao.login(user);		
	}
	
	// [완료] Ajax 유효성검사
	public int findValidate (User user, int type) throws Exception {
		return userDao.findValidate(user, type);
	}
	
}
