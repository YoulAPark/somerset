package com.ouneno.mybook.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@PostMapping("/json/findValidate/{type}")
	public String findValidate (@RequestBody User user, @PathVariable int type) throws Exception{
		userService.findValidate(user, type);
		return "user/addUserPage";
	}
	
}
