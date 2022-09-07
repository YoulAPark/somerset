package com.ouneno.mybook.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.mybook.service.domain.User;
import com.ouneno.mybook.service.user.Impl.UserService;

@RestController
@RequestMapping("/user/*")
public class UserRestController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/addUser")
	public User addUser(User user) throws Exception {
		return null;	
	}
	
}
