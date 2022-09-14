package com.ouneno.somerset.service.user.Impl;

import com.ouneno.somerset.service.domain.User;

public interface UserService {
	
	public User getUser (String id) throws Exception;

	// [완료] 회원가입
	public User addUser (User user) throws Exception;
	
	public User login (User user) throws Exception;
	
	// [완료] Ajax 유효성검사
	public int findValidate(User user, int type) throws Exception;
}
