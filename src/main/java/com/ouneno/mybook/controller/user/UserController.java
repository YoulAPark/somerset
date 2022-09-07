package com.ouneno.mybook.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.mybook.service.user.Impl.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private UserService userservice;
	
	@RequestMapping("/addUserPage")
	public String addUserPage() throws Exception {
		return "user/addUserPage";
	}

}
