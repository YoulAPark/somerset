package com.ouneno.somerset.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.domain.User;
import com.ouneno.somerset.service.user.Impl.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/addUserPage")
	public String addUserPage() throws Exception {
		return "user/addUserPage";
	}
	
	@RequestMapping("/loginView")
	public String loginView() throws Exception {
		return "user/loginView";
	}
	
	@RequestMapping("/login")
	public String login(User user, HttpSession session) throws Exception {
		System.out.println(user.getUserId());
		System.out.println(user.getUserPwd());
		
		User dbUser = userService.getUser(user.getUserId());
		System.out.println("** : "+dbUser);
		return "user/loginView";
		
	}
	
}
