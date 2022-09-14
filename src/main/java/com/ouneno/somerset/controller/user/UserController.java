package com.ouneno.somerset.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.domain.User;
import com.ouneno.somerset.service.user.Impl.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private UserService userservice;
	
	@RequestMapping("/addUserPage")
	public String addUserPage() throws Exception {
		return "user/addUserPage";
	}
	
	@RequestMapping("/loginView")
	public String loginView() throws Exception {
		return "user/loginView";
	}

	@RequestMapping("/getUser")
	public String getUser(HttpSession session) throws Exception{
		User user = (User)session.getAttribute("dbUser");
		if( user != null ) {
			return "/user/getUser";
		} else {
		return "/user/getUser"; /*"redirect:/";*/
		}
	}
}
