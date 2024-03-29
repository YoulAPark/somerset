package com.ouneno.somerset.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.domain.User;
import com.ouneno.somerset.service.user.Impl.UserService;

@RestController
@RequestMapping("/user/*")
public class UserRestController {

	@Autowired
	private UserService userService;
	
	@PostMapping("/json/findValidate/{type}")
	public int findValidate (@RequestBody User user, @PathVariable int type) throws Exception{
		userService.findValidate(user, type);
		return userService.findValidate(user, type);
	}
	
	@PostMapping("/json/addUser/")
	public void addUser(@RequestBody User user) throws Exception{
		userService.addUser(user);
	}	
	
	@PostMapping("/json/updateUser")
	public boolean updateUser(@RequestBody User user) throws Exception{
		userService.updateUser(user);
		return true;
	}
}
